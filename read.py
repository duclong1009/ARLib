import yaml
import json
with open('config.yaml', 'r') as file:
    data = yaml.safe_load(file)

# declaringa a class
class obj:
     
    # constructor
    def __init__(self, dict1):
        self.__dict__.update(dict1)
        
def dict2obj(dict1):
     
    # using json.loads method and passing json.dumps
    # method and custom object hook as arguments
    return json.loads(json.dumps(dict1), object_hook=obj)
    
# initializing the dictionary  
dictionary = {'A': 1, 'B': {'C': 2},
              'D': ['E', {'F': 3}],'G':4}
  
obj1 = dict2obj(dictionary)

breakpoint()