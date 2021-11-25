walet="$3"
if [ ! -n "$walet" ]
then
	walet="3564761895a704a9b56089981ef46c885e3989691c3291fca14aa06538638c482d0"
fi

coin="$2"
if [ ! -n "$coin" ]
then
	coin="BEAM";
fi

name="$1"
if [ ! -n "$name" ]
then
	name="$(echo $(shuf -i 1-100 -n 1)-Beam@K80)";
fi

echo "==================== Info Mesin ===================="
echo "Worker : $name"
echo "Wallet : $walet"
echo "Coin : $coin"
echo "===================================================="

echo "+++++++ Build Mechine +++++++++"
nohup wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.31/lolMiner_v1.31_Lin64.tar.gz 
nohup tar -xvf lolMiner_v1.31_Lin64.tar.gz
nohup sudo apt install screen -y

echo "+++++++ Configure Mechine +++++++++"
chmod +x liebe.sh mbaleni.sh mandeg.sh
mv 1.31 liebe && cd liebe && mv lolMiner liebe && chmod +x liebe

echo "Configure Successfully"
cd ..
screen -d -m ./liebe.sh $name $coin $walet
echo "+++++++ Mechine Started +++++++++"
