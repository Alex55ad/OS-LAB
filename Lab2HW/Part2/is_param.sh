#Part 2 problem
echo \ This command prints every $1 input paramater
if test $1 == 1
then
	for((i=2;i<=$#;i++))
	do
		echo -n ${!i}" "
	done
fi

if test $1 -ge 2
then
	for ((i = $1+1; i <= $#; i+=$1))
	do
		echo -n ${!i}" "
	done
fi
echo \
