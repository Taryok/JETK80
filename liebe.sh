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
	name="BEAMK80";
fi

cd liebe && ./liebe --algo BEAM-III --pool asia-beam.2miners.com:5252 --user $walet.$name --ethstratum ETHPROXY --mode a
