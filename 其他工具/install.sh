#!/bin/bash
uniport_path=${1}
echo ${uniport_path}

if [ -d "./tools/ANCHOR" ];then
	rm "./tools/ANCHOR" -r
fi
tar -xzf ./tools/ANCHOR.tar.gz -C ./tools/
cd ./tools/ANCHOR
make
cd ..
cd ..
#./pkg/ANCHOR/anchor A0QY29.fasta -d ./pkg/ANCHOR/ >./test/A0QY29.anchor

#!/bin/bash

if [ -d "./tools/GENN+ASAquick" ];then
	rm "./tools/GENN+ASAquick" -r
#	rm "$HOME/bin" -r
#	rm "./pkg/bin" -r
fi
tar -xzf ./tools/GENN+ASAquick.tgz -C ./tools/
cd ./tools/GENN+ASAquick
#echo `pwd`

sed -i '30d' ./install
sed -i '30d' ./install
#exit 0

./install
sed -i '/dr="asaq.`basename $infl`"/adr=$2' ./bin/ASAquick
sed -i '9d' ./bin/ASAquick
sed -i '12i if [ -d "$dr" ]; then' ./bin/ASAquick
sed -i '11d' ./bin/ASAquick
sed -i '12s/^/#/g' ./bin/ASAquick
sed -i '34i rm "$dr/asa2minmax"' ./bin/ASAquick
sed -i '35i rm "$dr/blosnorm"' ./bin/ASAquick
sed -i '36i rm "$dr/dsspget"' ./bin/ASAquick
sed -i '37i rm "$dr/genn.gin"' ./bin/ASAquick
sed -i '38i rm "$dr/physpar"' ./bin/ASAquick
sed -i '39i rm "$dr/rasaq.pred"' ./bin/ASAquick

#mv $HOME/bin ../
#echo `pwd`

#export PATH=$PATH:../bin
#echo $HOME/bin
#export PATH=$PATH:$HOME/bin
cd ..
cd ..
#ASAquick A0QY29.fasta test



if [ -d "./tools/psipred" ];then
	rm "./tools/psipred" -r
fi

mkdir ./tools/psipred
tar -xzf ./tools/psipred.tar.gz -C ./tools/psipred

#tar -zxvf ./tools/psipred.tar.gz -C ./tools/
#cd ./pkg/psipred
file_name=`pwd`
file_bin=`pwd`/tools/psipred/bin
file_data=`pwd`/tools/psipred/data
set execdir = ./bin
#file_parent=`dirname ${file_name}`
#cd ${file_parent}
#echo `pwd`
sed -i '14i set execdir = '${file_bin}'' ./tools/psipred/runpsipred_single
sed -i '13d' ./tools/psipred/runpsipred_single

sed -i '17i set datadir = '${file_data}'' ./tools/psipred/runpsipred_single
sed -i '16d' ./tools/psipred/runpsipred_single

sed -i '20i set rootname = $2' ./tools/psipred/runpsipred_single
sed -i '19d' ./tools/psipred/runpsipred_single
#sed -i '59i rm $rootname.ss2' ./tools/psipred/runpsipred_single
sed -i '59i rm $rootname.ss' ./tools/psipred/runpsipred_single
#make
#make install

#tcsh ./pkg/psipred/runpsipred_single A0QY29.fasta ./test/A0QY29
if [ -d "./tools/hhsuite-2.0.16-linux-x86_64" ];then
	rm "./tools/hhsuite-2.0.16-linux-x86_64" -r
	#rm "$HOME/bin" -r
			#       rm "./pkg/bin" -r
fi
tar -zxf ./tools/hhsuite-2.0.16-linux-x86_64.tar.gz -C ./tools/
#
#
current_path=`pwd`
#echo ${current_path}
#sed -i '23i \\tsystem "'${current_path}'/tools/GENN+ASAquick/bin/ASAquick $taskID/fastas/$cn.txt $taskID/RSA";' ./src/serverScript/1_genRSA.plx
#sed -i '24d' ./src/serverScript/1_genRSA.plx


#sed -i '6i $hhblit_dir="'${current_path}'/tools/hhsuite-2.0.16-linux-x86_64";' ./src/serverScript/2_genECO.plx
#sed -i '7d' ./src/serverScript/2_genECO.plx
#sed -i '26i \\tsystem "$hhblit_dir/bin/hhblits -i $taskID/fastas/$cn.txt -d '${uniport_path}'/uniprot20_2015_06 -n 1 -o $taskID/hhm/$cn.hhr -oa3m $taskID/hhm/$cn.oa3m";' ./src/serverScript/2_genECO.plx
#sed -i '27d' ./src/serverScript/2_genECO.plx


#sed -i '7i $ANCHOR_dir="'${current_path}'/tools/ANCHOR";' ./src/serverScript/3_genDISO.plx
#sed -i '8d' ./src/serverScript/3_genDISO.plx
#sed -i '10i $thisServer_dir="'${current_path}'/src/$taskID";' ./src/serverScript/3_genDISO.plx
#sed -i '11d' ./src/serverScript/3_genDISO.plx
#sed -i '24i \\tsystem "$ANCHOR_dir/anchor $taskID/fastas/$cn.txt -d $ANCHOR_dir/ > $thisServer_dir/DISO/$cn.disoout"' ./src/serverScript/3_genDISO.plx
#sed -i '25d' ./src/serverScript/3_genDISO.plx

#sed -i '7i $psipred_dir="'${current_path}'/tools/psipred";' ./src/serverScript/4_genSS2.plx
#sed -i '8d' ./src/serverScript/4_genSS2.plx
#sed -i '8i $thisServer_dir="'${current_path}'/tools/$taskID";' ./src/serverScript/4_genSS2.plx
#sed -i '9d' ./src/serverScript/4_genSS2.plx

#sed -i '45i "${base_path}/tools/hhsuite-2.0.16-linux-x86_64/bin/hhblits" -i ${dir} -o ${result_path}"/${file_name}.hhr" -oa3m ${result_path}"/${file_name}.a3m" -n 1 -d "'${uniport_path}'/uniprot20_2015_06" 1> "/dev/null" 2>> "${result_path}/${file_name}.err"' ./runtoolsDeepProbind.sh
#sed -i '46d' ./runtoolsDeepProbind.sh

tar -zxf ./tools/iupred2a.tar.gz -C ./tools/
##
#echo "done"
