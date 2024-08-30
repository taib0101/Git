x=5
git init
touch file{1..5}.txt

for((i=1;i<=$x;++i))
do
	git add file$i.txt
	git commit -m "add file$i"
        for((j=1;j<=$(($x+$i));++j))
	do
		echo $j >> file$i.txt
	done
	git add file$i.txt
	git commit -m "modified file$i"
done
