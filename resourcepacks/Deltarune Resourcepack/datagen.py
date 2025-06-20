import json
import os
import random
import re

models_path = './assets/minecraft/models/item'
os.makedirs(models_path, exist_ok=True)
textures_path = './assets/minecraft/textures/item'
os.makedirs(textures_path, exist_ok=True)

class Item:
	#item/handheld_rod
	def __init__(self, name, parent="item/generated",base_model_num=None):
		"""
		Initialize an Item object.
		Args:
			name (str): The name of the item (e.g. "diamond_sword")
			parent (str, optional): The base model of the item. Defaults to "item/generated".
			base_model_num (int, optional): The base model number to use for the item. If not set, a random number will be used. Defaults to None.
		"""
		self.json = {
			"parent": f"minecraft:{parent}",
			"textures": {
				"layer0": f"item/{name}"
			},
			"overrides": []
		}
		self.filename = name+".json"
		if base_model_num: self.custom_model_data = base_model_num
		else: self.custom_model_data = random.randint(1000,89999999)
	
	def append_custom_model_data(self,texture_path,gui_light="front",parent="item/generated"):
		"""
		Appends a new custom model data override to the item's model JSON.
		Args:
			texture_path (str): The path to the texture for the custom model data, relative to the textures folder.
			gui_light (str, optional): The GUI light setting for the custom model data. Defaults to "front".
		"""
		self.json['overrides'].append({"predicate": {"custom_model_data":self.custom_model_data},"model":f"item/{texture_path}"})
		os.makedirs(models_path+"/"+"/".join(texture_path.split('/')[:-1]), exist_ok=True)
		
		display_dictionary = None

		try:
			with open(models_path+"/"+texture_path+".json","r") as f:
				item_dict = json.load(f)
				display_dictionary = item_dict.get('display')
				parent = item_dict['parent']
				gui_light = item_dict['gui_light']
		except Exception:
			pass

		with open(models_path+"/"+texture_path+".json", "w") as f:
			if display_dictionary: json.dump({"parent":parent,"textures":{"layer0":f"item/{texture_path}"},"gui_light":gui_light,"display":display_dictionary},f,indent=4)
			else: json.dump({"parent":parent,"textures":{"layer0":f"item/{texture_path}"},"gui_light":gui_light},f,indent=4)
		
		self.custom_model_data += 1
	
	def scrape_textures_path(self,regex_filter="",inverse_search=False):
		"""
		Scrapes all textures in the textures folder and adds them as custom model data overrides to the item's model JSON.
		This is useful for creating an item that cycles through all textures in the textures folder.
		"""
		texture_paths = []
		prewritten_models = set()

		try:
			with open(models_path+"/"+self.filename,"r") as f: 
				self.json = json.load(f)
				for override in self.json["overrides"]:
					texture_path = override["model"].replace('item/','')
					self.custom_model_data = max(self.custom_model_data,int(override["predicate"]["custom_model_data"])+1)
					prewritten_models.add(texture_path)
		except FileNotFoundError:
			pass

		for root,dir,files in os.walk(textures_path):
			for filename in files:
				string = os.path.splitext(os.path.relpath(root+"/"+filename,textures_path))[0].replace('\\','/')
				if (regex_filter and re.search(regex_filter,string) and not inverse_search) or (regex_filter and inverse_search and not re.search(regex_filter,string)) or (not regex_filter):
					if string in prewritten_models:
						prewritten_models.remove(string)
					else:
						texture_paths.append(string)

		deleted_indices = []
		for i,override in enumerate(self.json['overrides']):
			if override['model'].replace('item/','') in prewritten_models:
				deleted_indices.append(i)

		for i in reversed(deleted_indices):
			self.json['overrides'].pop(i)

		for texture_path in texture_paths:
			self.append_custom_model_data(texture_path)
	
	def export_item(self):
		"""
		Exports the item's model JSON to a file in the models folder.
		The filename will be the same as the item's name, with a .json extension.
		"""
		with open(os.path.join(models_path,self.filename),"w") as f:
			json.dump(self.json,f,indent=4)

BASE_MODEL_NUMBER = 900625

#Knowledge Book Textures
knowledge_book = Item("knowledge_book",base_model_num=BASE_MODEL_NUMBER)
knowledge_book.scrape_textures_path(r".*axe.*")

#Warped Fungus Textures
warped_fungus_on_a_stick = Item("warped_fungus_on_a_stick",parent="item/handheld_rod",base_model_num=BASE_MODEL_NUMBER)
warped_fungus_on_a_stick.scrape_textures_path(r".*axe.*",inverse_search=True)

knowledge_book.export_item()
warped_fungus_on_a_stick.export_item()