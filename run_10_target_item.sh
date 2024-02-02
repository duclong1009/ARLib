# -------------- ML-1M -----------------
##
python main.py --config_path config/10_target_item/ml-1m/AUSH/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/ml-1m/AUSH/ngcf.yaml
rm -r 'modelsaved'
## 
python main.py --config_path config/10_target_item/ml-1m/GOAT/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/ml-1m/GOAT/ngcf.yaml
rm -r 'modelsaved'
## 
python main.py --config_path config/10_target_item/ml-1m/PoisonRec/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/ml-1m/PoisonRec/ngcf.yaml
rm -r 'modelsaved'
## 
python main.py --config_path config/10_target_item/ml-1m/RandomAttack/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/ml-1m/RandomAttack/ngcf.yaml
rm -r 'modelsaved'


# -------------- Douban -----------------
##
python main.py --config_path config/10_target_item/douban/AUSH/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/douban/AUSH/ngcf.yaml
rm -r 'modelsaved'
## 
python main.py --config_path config/10_target_item/douban/GOAT/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/douban/GOAT/ngcf.yaml
rm -r 'modelsaved'
## 
python main.py --config_path config/10_target_item/douban/PoisonRec/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/douban/PoisonRec/ngcf.yaml
rm -r 'modelsaved'
## 
python main.py --config_path config/10_target_item/douban/RandomAttack/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/douban/RandomAttack/ngcf.yaml
rm -r 'modelsaved'



# -------------- Beauty -----------------
##
python main.py --config_path config/10_target_item/Beauty/AUSH/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/Beauty/AUSH/ngcf.yaml
rm -r 'modelsaved'
## 
python main.py --config_path config/10_target_item/Beauty/GOAT/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/Beauty/GOAT/ngcf.yaml
rm -r 'modelsaved'
## 
python main.py --config_path config/10_target_item/Beauty/PoisonRec/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/Beauty/PoisonRec/ngcf.yaml
rm -r 'modelsaved'
## 
python main.py --config_path config/10_target_item/Beauty/RandomAttack/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/10_target_item/Beauty/RandomAttack/ngcf.yaml
rm -r 'modelsaved'