git log --oneline
read c
git checkout $c
git branch taib
git checkout taib
x=8
touch file{6..8}.txt

for((i=6;i<=$x;++i))
do
	git add file$i.txt
	git commit -m "add file$i"
        for((j=1;j<=$(($x+$i+5));++j))
	do
		echo $j >> file$i.txt
	done
	git add file$i.txt
	git commit -m "modified file$i"
done
