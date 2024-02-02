## 
python main.py --config_path config/ml-1m/PoisonRec/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/ml-1m/PoisonRec/ngcf.yaml
rm -r 'modelsaved'
## 
python main.py --config_path config/ml-1m/RandomAttack/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/ml-1m/RandomAttack/ngcf.yaml
rm -r 'modelsaved'


# -------------- Beauty -----------------
## 
python main.py --config_path config/Beauty/PoisonRec/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/Beauty/PoisonRec/ngcf.yaml
rm -r 'modelsaved'

## 
python main.py --config_path config/Beauty/RandomAttack/lightgcn.yaml
rm -r 'modelsaved'
python main.py --config_path config/Beauty/RandomAttack/ngcf.yaml
rm -r 'modelsaved'