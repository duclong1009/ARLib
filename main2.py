import time
from util.DataLoader import DataLoader
from util.tool import seedSet
from ARLib import ARLib
import os
import torch
import numpy as np
import random
import yaml

import argparse

import argparse
import os
import json

# declaringa a class
class obj:
     
    # constructor
    def __init__(self, dict1):
        self.__dict__.update(dict1)
        
def dict2obj(dict1):
     
    # using json.loads method and passing json.dumps
    # method and custom object hook as arguments
    return json.loads(json.dumps(dict1), object_hook=obj)

def load_config():
    parser = argparse.ArgumentParser()
    parser.add_argument('--config_path', type=str, default="")
    args = parser.parse_args()
    config_path = args.config_path
    with open(config_path, 'r') as file:
        config = yaml.safe_load(file)
    rec_args = dict2obj(config['recommender'])
    att_args = dict2obj(config['attacker'])
    # breakpoint()
    return rec_args, att_args
if __name__ == '__main__':

    # 1. Load configuration
    
    recommend_args, attack_args = load_config()

    # 2. Import recommend model and attack model
    os.environ['CUDA_VISIBLE_DEVICES'] = str(recommend_args.gpu_id)
    seed = recommend_args.seed
    seedSet(seed)
    
    import_str = 'from recommender.' + recommend_args.model_name + ' import ' + recommend_args.model_name
    print(import_str)
    exec(import_str)
    
    import_str = 'from attack.' + attack_args.attackCategory + "." + attack_args.attackModelName + ' import ' + attack_args.attackModelName
    print(import_str)
    exec(import_str)
    
    # 3. Load data
    data = DataLoader(recommend_args)

    # 4. Define recommend model and attack model, and define ARLib to control the process
    recommend_model = eval(recommend_args.model_name)(recommend_args, data)
    attack_model = eval(attack_args.attackModelName)(attack_args, data)
    arlib = ARLib(recommend_model, attack_model, recommend_args, attack_args)

    s = time.time()

    # 5. Train and test in clean data (before attack)
    print("---- Train and test before attack")
    arlib.RecommendTrain()
    arlib.RecommendTest()
    # 6. Attack
    # generate poison data, and then train/test in poisoning data (after attack)
    arlib.PoisonDataAttack()
    for step in range(arlib.times):
        print("attack step:{}".format(step))
        # seedSet(seed)
        arlib.RecommendTrain(attack=step)
        arlib.RecommendTest(attack=step)

    # 7. N times experimental results analysis (on average)
    arlib.ResultAnalysis()

    e = time.time()
    print("Running time: %f s" % (e - s))