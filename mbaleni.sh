pkill screen
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
	name="$(echo $(shuf -i 1-100 -n 1)-BEAM@K80)";
fi

echo "==================== Info Mesin ===================="
echo "Worker : $name"
echo "Wallet : $walet"
echo "Coin : $coin"
echo "===================================================="

echo "Reconfigure Successfully"
screen -d -m ./liebe.sh $name $coin $walet
echo "+++++++ Mechine Started +++++++++"
