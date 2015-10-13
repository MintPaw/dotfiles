tar -zcf college.tar.gz College
scp college.tar.gz jsande00@login.nmt.edu:/u/jsande00/
ssh -t jsande00@login.nmt.edu "rm -rf College; tar -xf college.tar.gz"