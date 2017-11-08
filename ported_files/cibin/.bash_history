echo "q - new"|sed -e 's/\\([\s-]\\)/\\\\\1/'
#1501273802
echo "q - new"|sed -e 's/\\([\s-]\\)/\\1/'
#1501273812
echo "q - new"|sed -e 's/\\([\s-]\\)/\\\\\\1/'
#1501273816
echo "q - new"|sed -e 's/\\([\s-]\\)/\\\\\\\\1/'
#1501273828
echo "q - new"|sed -e 's/\\([\s-]\\)/ \\1/'
#1501273834
echo "q - new"|sed -e 's/\\([\s-]\\)/\\1/'
#1501273838
echo "q - new"|sed -e 's/\\([\s-]\\)/\\1 /'
#1501273841
echo "q - new"|sed -e 's/\\([\s-]\\)/\\1s /'
#1501273846
echo "q - new"|sed -e 's/\\([\s-]*\\)/\\1s /'
#1501273906
vim /cygdrive/c/cbn_gits/AHK/qwerty\ -\ NEW.ahk
#1501273954
srf
#1501319732
ranger
#1501319745
alias ranger
#1501319778
open_in_ranger /cygdrive/c/cbn_gits
#1501321089
open delete.bat 
#1501321103
delete.bat 
#1501321267
explorer.exe C:\
#1501321274
explorer.exe C:\\
#1501321283
explorer.exe C:\\cbn_gits
#1501321299
explorer.exe C:\\cbn_gits\\README.md.txt
#1501320026
open_in_ranger "/cygdrive/c/cbn_gits"
#1501325836
dir=/home/smith/Desktop/Test
#1501325840
parentdir="$(dirname "$dir")"
#1501325846
echo $parentdir 
#1501326043
pwd
#1501326099
a=/cygdrive/C/cygwin64/home/cibin/my-scripts/open_explorer.sh
#1501326108
arg=/cygdrive/C/cygwin64/home/cibin/my-scripts/open_explorer.sh
#1501326114
parentdir="$(dirname "$arg")"
#1501326115
cd "${parentdir}"
#1501327015
smart_open 
#1501327071
ls
#1501327072
ll
#1501327425
srf
#1501327517
alias srf
#1501328197
echo "/adsf/asdfa/a/cva.a:23:|sed -e 's/[^:]*:/asdf//'

#1501328224
echo "/adsf/asdfa/a/cva.a:23:"|sed -e 's/[^:]*:/asdf//'
#1501328228
echo "/adsf/asdfa/a/cva.a:23:"|sed -e 's/[\\^:]*:/asdf//'
#1501328235
echo "/adsf/asdfa/a/cva.a:23:"|sed -e 's/[\\^:]/a//'
#1501328242
echo "/adsf/asdfa/a/cva.a:23:"|sed -e 's/[:]/a//'
#1501328277
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/[:]/a//"
#1501328284
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/hgjgj/a//"
#1501328297
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/hgjgj/a//" -- "$@"
#1501328369
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/hgjgj/a/" -- "$@"
#1501328377
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/hgjgj/      /" -- "$@"
#1501328390
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/[^:]*/      /" -- "$@"
#1501328398
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/[^:]*:/      /" -- "$@"
#1501328434
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*:\\)/\1      /" -- "$@"
#1501328440
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*:\\)/\\1      /" -- "$@"
#1501328448
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*:\\)/\\      /" -- "$@"
#1501328450
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*:\\)/\\1      /" -- "$@"
#1501328498
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*:\\)\\(.*\\)/\\1      /" -- "$@"
#1501328524
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*:\\)\\(\\d+\\)\\(.*\\)/\\1      /" -- "$@"
#1501328531
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*:\\)\\(\\d+\\)\\(.*\\)/\\1 = \\2      /" -- "$@"
#1501328544
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*\\)\\(:\\d+\\)\\(.*\\)/\\1 = \\2      /" -- "$@"
#1501328562
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*\\)\\(:\d+\\)\\(.*\\)/\\1 = \\2      /" -- "$@"
#1501328571
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*\\)\\(:\\\d+\\)\\(.*\\)/\\1 = \\2      /" -- "$@"
#1501328588
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*\\)\\(:\\\\d+\\)\\(.*\\)/\\1 = \\2      /" -- "$@"
#1501328591
echo "/adsf/asdfa/a/cva.a:23:"|sed -e "s/\\([^:]*\\)\\(:\\\d+\\)\\(.*\\)/\\1 = \\2      /" -- "$@"
#1501328857
echo "/adsf/asdfa/a/cva.a:23:adfasdf"|sed -e "s/\\([^:]*\\)\\(.*\\)/\\1/" -- "$@"
#1501328865
echo "/adsf/asdfa/a/cva.a:23:adfasdf"|sed -e "s/\\([^:]*\\)\\(.*\\)/\\1   \\2/" -- "$@"
#1501328871
echo "/adsf/asdfa/a/cva.a:23:adfasdf"|sed -e "s/\\([^:]*\\)\\(.*\\)/\\1  = \\2/" -- "$@"
#1501328887
echo "/adsf/asdfa/a/cva.a:23:adfasdf"|sed -e "s/\\([^:]*\\)\\(23\\)\\(.*\\)/\\1  = \\2/" -- "$@"
#1501328905
echo "/adsf/asdfa/a/cva.a:23:3535:adfasdf"|sed -e "s/\\([^:]*\\)\\(23\\)\\(.*\\)/\\1  = \\2/" -- "$@"
#1501328921
echo "/adsf/asdfa/a/cva.a:23:3535:adfasdf"|sed -e "s/\\([^:]*\\)\\(23\\)\\(.*\\)/\\1====\\2===\\3/" -- "$@"
#1501328931
echo "/adsf/asdfa/a/cva.a:23:3535:adfasdf"|sed -e "s/\\([^\:]*\\)\\(23\\)\\(.*\\)/\\1====\\2===\\3/" -- "$@"
#1501328938
echo "/adsf/asdfa/a/cva.a:23:3535:adfasdf"|sed -e "s/\\([^\\:]*\\)\\(23\\)\\(.*\\)/\\1====\\2===\\3/" -- "$@"
#1501328950
echo "/adsf/asdfa/a/cva.a:23:3535:adfasdf"|sed -e "s/\\([^:]*\\)\\(:23\\)\\(.*\\)/\\1====\\2===\\3/" -- "$@"
#1501328963
echo "/adsf/asdfa/a/cva.a:23:3535:adfasdf"|sed -e "s/\\([^:]*\\):?\\(23\\)\\(.*\\)/\\1====\\2===\\3/" -- "$@"
#1501328970
echo "/adsf/asdfa/a/cva.a:23:3535:adfasdf"|sed -e "s/\\([^:]*\\):\?\\(23\\)\\(.*\\)/\\1====\\2===\\3/" -- "$@"
#1501328981
echo "/adsf/asdfa/a/cva.a:23:3535:adfasdf"|sed -e "s/\\([^:]*\\):\?\\(23\\)\\(.*\\)/\\1:\\2===\\3/" -- "$@"
#1501328990
echo "/adsf/asdfa/a/cva.a:23:3535:adfasdf"|sed -e "s/\\([^:]*\\):\?\\(23\\)\\(.*\\)/\\1:\\2" -- "$@"
#1501328993
echo "/adsf/asdfa/a/cva.a:23:3535:adfasdf"|sed -e "s/\\([^:]*\\):\?\\(23\\)\\(.*\\)/\\1:\\2/" -- "$@"
#1501353824
snf
#1501354046
echo "/cygdrive/c/Users/cibin/Downloads/interview-preps-notes.org:6:** data sto"|extract_filepath_linenum
#1501354074
echo "/cygdrive/c/Users/cibin/Downloads/interview-preps-notes.org:6:** data sto"|sed -e "s/\\([^:]*\\):\?\\(23\\)\\(.*\\)/\\1:\\2/" -- "$@"
#1501354090
echo "/cygdrive/c/Users/cibin/Downloads/interview-preps-notes.org:6:** data sto"|sed -e "s/\\([^:]*\\):\?\\(2\d\\)\\(.*\\)/\\1:\\2/" -- "$@"
#1501354096
echo "/cygdrive/c/Users/cibin/Downloads/interview-preps-notes.org:6:** data sto"|sed -e "s/\\([^:]*\\):\?\\(2\\d\\)\\(.*\\)/\\1:\\2/" -- "$@"
#1501354102
echo "/cygdrive/c/Users/cibin/Downloads/interview-preps-notes.org:6:** data sto"|sed -e "s/\\([^:]*\\):\?\\(2\\\d\\)\\(.*\\)/\\1:\\2/" -- "$@"
#1501354107
echo "/cygdrive/c/Users/cibin/Downloads/interview-preps-notes.org:6:** data sto"|sed -e "s/\\([^:]*\\):\?\\(2\\\\d\\)\\(.*\\)/\\1:\\2/" -- "$@"
#1501354178
echo "/cygdrive/c/Users/cibin/Downloads/interview-preps-notes.org:6:** data sto"|sed -e "s/\\([^:]*\\):\?\\([[:digit:]]\+\\)\\(.*\\)/\\1:\\2/" -- "$@"
#1501354392
vim /cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt
#1501354586
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt"|open_in_vim
#1501354600
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"|open_in_vim
#1501354734
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt"|open_in_vim
#1501354737
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"|open_in_vim
#1501355257
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt"|open_in_vim
#1501355284
function open_in_vim(){  vim < /dev/tty "$@"}; function open_in_vim(){  vim < /dev/tty "$@"}; function open_in_vim(){  vim < /dev/tty "$@"}; function open_in_vim(){  vim < /dev/tty "$@" }
#1501355323
function open_in_vim(){  vim < /dev/tty "$@" }
#1501355329
function open_in_vim() {  vim < /dev/tty "$@" }
#1501355338
function open_in_vim() {  vim < /dev/tty $@ }
#1501355368
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt"|open_in_vim
#1501355377
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"|open_in_vim
#1501355724
open_in_vim echo /cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"
#1501355730
open_in_vim echo /cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt
#1501355754
open_in_vim /cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt
#1501355775
open_in_vim "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"
#1501355786
open_in_vim "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt" 
#1501355796
open_in_vim -- "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt" 
#1501355805
open_in_vim -- /cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt 
#1501355810
open_in_vim --/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt 
#1501403961
vim /cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt 
#1501403973
vim /cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt 
#1501405887
echo "/cyg/a.vim"|open_in_vim 
#1501406393
echo "/cygdrive/c/cbn_gits/delete.py"|open_in_vim
#1501406673
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"|open_in_vim
#1501406692
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt"|open_in_vim
#1501406980
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi\\\ notes.txt"|open_in_vim
#1501407711
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt"|open_in_vimiii
#1501407732
echo /cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt|open_in_vimiii
#1501407737
echo /cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt|open_in_vim
#1501407758
echo /cygdrive/c/Users/cibin/Downloads/raspberrypi\\ notes.txt|open_in_vim
#1501407927
echo /cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt|open_in_vim
#1501407956
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"|open_in_vim
#1501408030
echo /cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt|open_in_vim
#1501408085
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt"|open_in_vim
#1501408156
echo /cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt|open_in_vim
#1501408532
snf
#1501430506
echo -e "\e[1;31mThis is red text\e[0m"
#1501430512
echo "\e[1;31mThis is red text\e[0m"
#1501431413
s
#1501431686
stf
#1501431700
st
#1501431908
searchtext .
#1501432084
textreset=$(tput sgr0) # reset the foreground colour
#1501432084
red=$(tput setaf 1)
#1501432084
yellow=$(tput setaf 2) 
#1501432085
echo "Output a ${yellow} coloured ${textreset} ${red} word ${textreset}."
#1501432390
yellow=$(tput setaf 2) 
#1501432391
echo "Output a ${yellow} coloured ${textreset} ${red} word ${textreset}."
#1501432701
st
#1501443984
j
#1501443987
ls
#1501472770
tree -c
#1501472772
tree
#1501472774
ls
#1501524436
tree
#1501526679
st
#1501527121
stf
#1501527121
stf
#1501527203
saf
#1501527247
searchall .|fzy
#1501527327
cdahk hk
#1501527330
cdahk
#1501527335
saf
#1501527421
searchall .
#1501528131
ranger
#1501528254
/usr/bin/python3.6m.exe /cygdrive/c/cygwin64/bin/ranger
#1501610801
f
#1501610806
f eclipse exe
#1501610832
sf
#1501611536
s
#1501612845
curl -i -X POST _H "Content-Type:application/json" -d '{"firstName':"cbn", "lastName": "asdf"}' localhost:8080/persons
#1501612861
curl -i -X POST _H "Content-Type:application/json" -d '{"firstName":"cbn", "lastName": "asdf"}' localhost:8080/persons
#1501612886
curl -i -X POST -H "Content-Type:application/json" -d '{"firstName":"cbn", "lastName": "asdf"}' localhost:8080/persons
#1501616345
sublime_file=C:/Users/"$USERNAME"/AppData/Roaming/Sublime\ Text\ 3/Local/Session.sublime_session
#1501616345
notepadpp_file=/cygdrive/c/Users/"$USERNAME"/AppData/Roaming/Notepad++/session.xml
#1501616345
notepadpp_file2=/cygdrive/c/Users/"$USERNAME"/AppData/Roaming/Notepad++/config.xml
#1501616355
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers']));print('\n'.join([a['file'] for a in all]"
#1501616369
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers']);print('\n'.join([a['file'] for a in all]"
#1501616375
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] for a in all]"
#1501616381
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] for a in all])"
#1501616432
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] for a in all]))"
#1501616483
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print(all)"
#1501616630
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] for a in all]))"
#1501616765
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] if a['file'] else None for a in all]))"
#1501616800
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] if a['file'] is not None else '' for a in all]))"
#1501616847
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] if 'file' in a else '' for a in all]))"
#1501616864
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] if 'file' in a else None for a in all]))"
#1501616872
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] if 'file' in a else [] for a in all]))"
#1501616887
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] if 'file' in a else continue for a in all]))"
#1501617000
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] if 'file' in a else '' for a in all]))"
#1501617005
cat "$sublime_file"|python -c "import sys, json; all=json.load(sys.stdin)['windows'][0]['buffers'];print('\n'.join([a['file'] if 'file' in a else '' for a in all]))"|convert_forwardslash_windows_to_cygdrive
#1501617015
cat "$sublime_file"|python -c "import sys, json; print('\n'.join(json.load(sys.stdin)['windows'][0]['file_history']))"|convert_forwardslash_windows_to_cygdrive
#1501617829
ls
#1501617947
sf
#1501618319
echo /cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt|open_in_vim
#1501618376
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"|open_in_vim
#1501618617
echo /cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt|open_in_vim
#1501618631
l
#1501618685
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"|open_in_vim
#1501618898
a="/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"
#1501618904
vim -- "$a"
#1501618964
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"|open_in_vim
#1501619037
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt:3"|open_in_vim
#1501619049
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt"|open_in_vim
#1501619193
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt:3"|open_in_vim
#1501619276
open_in_vim "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt:3"
#1501619728
ranger
#1501696108
cron_jobs_cibiN
#1501696112
cron_jobs_cibin
#1501699159
echo \"C:\cygwin64\home\cibin\"|convert_to_cygdrive
#1501699297
echo \"C:\\cygwin64\\home\\cibin\"|convert_to_cygdrive
#1501699560
cd /cygdrive/D/Local\ Disk\ D_732016210
#1501699567
cd /cygdrive/D/Local\ Disk\ D_732016210/
#1501699586
cd "/cygdrive/D/Local\ Disk\ D_732016210/"
#1501699595
cd "/cygdrive/D/Local Disk D_732016210/"
#1501699604
cd "/cygdrive/d
"
#1501699610
cd ~
#1501699620
cd /cygdrive/d/Local\ Disk\ D_732016210/
#1501700087
snf
#1501700091
sn
#1501700535
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt:3"|open_in_vim
#1501700553
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi\ notes.txt:3"|open_in_vim
#1501700576
echo "/cygdrive/c/Users/cibin/Downloads/raspberrypi notes.txt:3"|open_in_vim
#1501700730
st
#1501700749
stf
#1501700760
s
#1501700760
s
#1501700829
st;extract_filepath_linenum|open_in_app
#1501700884
st|extract_filepath_linenum|open_in_app
#1501700923
echo "$(st)";extract_filepath_linenum|open_in_app
#1501700985
echo "$(st|fzy)";extract_filepath_linenum|open_in_app
#1501700985
echo "$(st|fzy)";extract_filepath_linenum|open_in_app
#1501701029
echo "$(st|fzy)"|extract_filepath_linenum|open_in_app
#1501701531
wget https://raw.githubusercontent.com/eddyerburgh/git-init-plus/master/install.sh && chmod +x install.sh && sudo ./install.sh
#1501701545
wget https://raw.githubusercontent.com/eddyerburgh/git-init-plus/master/install.sh && chmod +x install.sh && ./install.sh
#1501701697
cd ~/my-scripts/
#1501701704
git-init-plus -l ISC -n Edd -p project-name
#1501701710
./git-init-plus -l ISC -n Edd -p project-name
#1501701715
./git-init-plus.sh -l ISC -n Edd -p project-name
#1501701722
./git-init-plus.sh -n Edd -p project-name
#1501701774
~/my-scripts/git-init-plus.sh -n Edd -p project-name
#1501701810
cd del
#1501701812
~/my-scripts/git-init-plus.sh -n Edd -p project-name
#1501701897
git
#1501701899
git status
#1501702302
gitinit 
#1501702407
git status
#1501702421
git log
#1501702459
gitinit 
#1501702467
git log
#1501702475
git ls-files
#1501702596
gitinit 
#1501702720
git status
#1501702725
git log
#1501702941
s
#1501702941
s
#1501964173
ex
#1501964281
less -N myalias.sh 
#1501964334
l sh
#1501964347
less -isNm *.sh
#1502010403
ex
#1502042425
searchhere
#1502042500
s
#1502042559
ex
#1502042774
s
#1502042774
s
#1502124520
ex
#1502129111
a=/c/sf/a.txt
#1502129127
echo "${$a%%.*}"
#1502129133
echo "${a%%.*}"
#1502129154
echo "${$#*.}"
#1502129177
echo "${$a#*.}"
#1502129184
echo "${a#*.}"
#1502132466
cd Get-It-Done/
#1502132480
cd PageFactory\ -\ gradle
#1502132561
cd "PageFactory - gradle"
#1502132574
cd "PageFactory\ -\ gradle"
#1502132706
cd -- "PageFactory - gradle"
#1502133118
sf
#1502133118
sf
#1502133219
s
#1502133227
sf
#1502133227
sf
#1502133733
export ~=/home/cibin
#1502133742
export \~=/home/cibin
#1502133746
export ~=/home/cibin
#1502133750
export ~ =/home/cibin
#1502133755
export ~ = /home/cibin
#1502134223
du  /cygdrive/C/cbn_gits/misc/smart_open2.bat
#1502134245
ls -lh
#1502134258
ls -lH
#1502134281
s
#1502134335
q
#1502134337
ex
#1502134666
sf
#1502134769
s
#1502134781
sf
#1502134781
sf
#1502134786
\sf
#1502134791
command sf
#1502134796
alias sf
#1502134799
sf
#1502134866
v
#1502134885
fasd
#1502134942
e
#1502134943
ex
#1502134993
sf
#1502304594
gitcbn 
#1502304680
gitcbn
#1502304748
git diff --name-only # list only changed files
#1502304973
gitcbn 
#1502305075
git status --porcelain | grep "^A" | cut -c 4-
#1502305083
git status
#1502305100
git status|less
#1502305140
gitcbn 
#1502305190
git diff --name-only --diff-filter=A --cached # All new files in the index  
#1502305194
git diff
#1502305204
git add delete.txt 
#1502305206
git diff
#1502305218
git diff --name-only --diff-filter=A --cached # All new files in the index  
#1502305281
gitcbn
#1502305318
git status --short
#1502305337
git status --short|less
#1502305347
git status --short|less -iN
#1502305373
git status --short|less -iNR
#1502305378
git status --short|less -R
#1502305389
git status --short|less -r
#1502305454
gitcbn
#1502306615
recent_files 
#1502306646
recent_files |wc
#1502306652
recent_files|head
#1502306656
recent_files|head|less
#1502306690
less $(recent_files|head)
#1502306740
less $(recent_files|head|tail -n 9)
#1502306794
less $(recent_files|head -n 20|tail -n 9)
#1502306813
less $(recent_files|head -n 30|tail -n 15)
#1502306939
echo 'a.txt
does/not.exist
b.txt' | xargs -d '\n' find 2>/dev/null
#1502306964
echo 'a.txt does/not.exist b.txt' | xargs -d '\n' find 2>/dev/null
#1502306977
echo 'delete.txt' | xargs -d '\n' find 2>/dev/null
#1502306986
echo 'delete.txt' | xargs -d '\n' find 
#1502306991
echo 'delete.txt' | xargs -d '\n' lfind 
#1502306995
echo 'delete.txt' | xargs -d '\n' lfind 2>/dev/null
#1502307001
echo 'a.txt does/not.exist b.txt' | xargs -d '\n' lfind 2>/dev/null
#1502307017
recent_files| xargs -d '\n' lfind 2>/dev/null
#1502389657
git diff
#1502389675
gitp
#1502389729
git commit
#1502389739
git commit -a -m "new"
#1502389742
git log
#1502389870
git remote show origin
#1502389904
basename $(git remote show origin|grep Fetch)
#1502389942
git remote show origin|grep Fetch
#1502390000
git remote show origin|grep Fetch|grep -P .git
#1502390028
git remote show origin|grep Fetch|grep -P \\w+\.git$
#1502390169
basename $(git remote show origin|grep Fetch|cut -d: -f2-)
#1502390236
gitp
#1502390403
git status --short| grep -E "^A"
#1502390408
git status --short
#1502390445
git status --short| grep -E "^M"
#1502390449
git status --short| grep -E "^ M"
#1502390457
git status --short| grep -E "^ M|A"
#1502390467
git status --short| grep -E "^( M|A)"
#1502390520
gitp
#1502390838
lfind . -mtime -1 -type -f -print| grep -v -E "^\.git"
#1502390875
lfind . -mtime -1 -type -f -print
#1502390881
lfind . -mtime -1 -type f -print
#1502390890
lfind . -mtime -1 -type f -print| grep -v -E "^\.git"
#1502390961
lfind . -mtime -1 -type f -print| grep -v -E "^\./\.git"
#1502391034
gitp
#1502392990
git add Python.sublime-settings 
#1502395264
s
#1502395298
recent_files iles|fzy
#1502395359
gitp
#1502848244
searchhere
#1502848368
seachhere -n
#1502848373
searchhere -n
#1502848397
searchhere -
#1502848415
searchhere -n
#1502848418
searchhere -
#1502848407
bash
#1502848889
searchtext
#1502849198
searchtext -n ahk include
#1502849670
searchtext -n
#1502849676
searchtext -n ahk include
#1502849696
searchtext ahk include
#1502849744
searchtext -n ahk include
#1502849772
searchtext ahk include
#1502851827
ask_searchterm
#1502855013
ask_searchterm 
#1502855079
ask_searchterm  -n
#1502855118
ask_searchterm 
#1502855126
ask_searchterm -n
#1502855168
ask_searchterm 
#1502905367
fa rc.conf
#1502905374
sf
#1502906499
ask_searchterm 
#1502906688
cdahk 
#1502906691
ask_searchterm 
#1502906807
cdahk
#1502906810
ask_searchterm 
#1502906983
cdahk
#1502907430
ask_searchterm -r ahk .|fzy
#1502907725
ask_searchterm -r bat .|fzy
#1502910911
gitp
#1502997718
s
#1502997718
s
#1503001859
du
#1503001863
ls -lt
#1503001872
ls -lh
#1503001920
ls -lhS
#1503001931
du -h | sort -rh
#1503001933
du
#1503001940
\du
#1503001946
\du -h | sort -rh
#1503001953
du
#1503001961
\du | sort -rh
#1503001969
\du
#1503001979
ls -S
#1503001982
ls -Sl
#1503002004
du --max-depth=1 /home/ | sort -n -r
#1503002012
du --max-depth=1 /home/ | lsort -n -r
#1503002030
du --max-depth=1 /home/ 
#1503002033
du --max-depth=1 
#1503002036
du
#1503163416
e
#1503163417
ex
#1503220159
ls
#1503220172
cd
#1503220175
pwd
#1503220181
ls
#1503220456
searchtext
#1503220462
ls
#1503220494
cd ~
#1503220495
ls
#1503220504
ls|fzf
#1503220666
fzf
#1503220680
ls
#1503220681
pwd
#1503220690
ls|wc
#1503220692
ls|fzy
#1503220706
ls|fzf
#1503220722
ccccc
#1503220722
ls
#1503327028
ls|fzf
#1503327035
c
#1503327494
ls|fzf
#1503327537
ls
#1503327540
ls|fzf
#1503328047
ls|fzy
#1503328115
ls|fzf
#1503328127
qr
#1503328131
ls
#1503329017
sh
#1503685158
s
#1503685160
sf
#1504124137
vi run-cron-jobs-cbn.sh
#1504124168
s
#1504124168
s
#1504124230
vi run-cron-jobs-cbn.sh
#1504626644
source ~/.bashrc
#1504626645
cron_jobs_cibin
#1504627406
sf
#1504634786
cd ~
#1504635033
scf
#1504635137
alias scf='cmd=$(searchcommands);echo "$cmd"'
#1504635140
scf
#1505039380
ls|fzy todo
#1505039395
ls|fzy -q todo
#1505039409
ls|fzy -e todo
#1505039419
sf
#1505039419
sf
#1505039440
ls|fzy -e od
#1505039454
ls|fzy -e ada
#1505048836
delete.sh
#1505048877
echo %PATH%
#1505049167
cat "$Universal_home/Downloads/all_files.db"|fzy -e=control
#1505049187
cat "$Universal_home/Downloads/all_files.db"|fzy -e=control.ahk
#1505049196
fzy
#1505049220
fzy -adf
#1505049231
cat "$Universal_home/Downloads/all_files.db"|fzy -e=controlahk
#1505049239
cat "$Universal_home/Downloads/all_files.db"|fzy -e=contr
#1505049248
cat "$Universal_home/Downloads/all_files.db"|fzy -e=pennin
#1505049252
cat "$Universal_home/Downloads/all_files.db"|fzy -e=penninu
#1505049267
cat "$Universal_home/Downloads/all_files.db"|fzy -e=penninu -l2
#1505049273
cat "$Universal_home/Downloads/all_files.db"|fzy -e=penninu -l 2
#1505049279
cat "$Universal_home/Downloads/all_files.db"|fzy -e=penninu -l=2
#1505049299
cat "$Universal_home/Downloads/all_files.db"|fzy -e=penninu -l2
#1505049302
cat "$Universal_home/Downloads/all_files.db"|fzy -e=penninu 
#1505048972
sf
#1505049598
cat all_files.db |grep aval
#1505049605
cat all_files.db |grep varuo
#1505049612
cat all_files.db |grep aval
#1505049618
cat all_files.db |grep aval|grep avo
#1505049916
searchfiles
#1505049939
cdd
#1505049948
cat all_files.db |fzy -e=varuvo
#1505049955
fzy --d
#1505049980
fzy -q=varuvo
#1505050051
cat all_files.db |fzy -q=varuvo
#1505050072
cat all_files.db |fzy -q=varuvo -s
#1505050105
cat all_files.db |fzy -qvaruvo -s
#1505050160
cat all_files.db |fzy -qvaruvo -l1
#1505050166
cat all_files.db |fzy -qvaruvo -l 1
#1505050173
cat all_files.db |fzy -l1 -qvaruvo 
#1505050177
cat all_files.db |fzy -l 1 -qvaruvo 
#1505050186
cat all_files.db |fzy -l=1 -qvaruvo 
#1505052541
source ~/.bashrc
#1505052542
cron_jobs_cibin
#1505187663
svn
#1505187781
svn checkout https://github.com/cibinmathew/cbn_gits/trunk/master/ported_files/cibin/.emacs.d/my-files/config/personal-configs
#1505187812
svn checkout https://github.com/cibinmathew/cbn_gits/tree/master/ported_files/cibin/.emacs.d/my-files/config/personal-configs
#1505187851
svn checkout https://github.com/cibinmathew/cbn_gits/trunk/ported_files/cibin/.emacs.d/my-files/config/personal-configs
#1505188034
./download-git-folder.sh 
#1505188315
mkdir -p .emacs.d/my-files
#1505318444
r
#1505325088
e
#1505325089
exit
#1505750986
emacs
#1505751028
em
#1505751030
e
#1505751035
cd ~
#1505836406
which fzy
#1505843143
g
#1505843696
ls
#1505843901
ex
#1505843154
r
#1505915034
snf
#1505915060
bash
#1505919227
which fzy
#1505919603
source ~/.bashrc
#1505919604
cron_jobs_cibin
#1505929576
snf -epython|head -n 3
#1505931307
snf
#1505932645
searchnotes python
#1505932700
searchnotes python|grep defun
#1505932746
searchnotes .|grep defun
#1505932862
searchnotes .|grep bjm
#1505932906
searchnotes . --no-color|grep bjm
#1505933042
bash -ic 'searchnotes . --no-color|fzy -ebjm|head -n 5
#1505933058
bash -ic 'searchnotes . --no-color
#1505933066
bash -ic 'searchnotes . --no-color|fzy -ebjm|head -n 5'
#1505933559
vi
#1505933578
vim
#1505933587
vi
#1505933600
alias vi='vim'
#1505933601
vi
#1505933653
snf
#1505933671
snf -epython
#1505933698
snf -epython --no-color
#1505933838
ag
#1505934996
bash -ic 'searchnotes . --nocolor|fzy -epython|head -n 50' 2>/dev/null
#1505935019
bash -ic 'searchnotes . --nocolor|fzy -ebjm|head -n 10' 2>/dev/null
#1506020743
sf
#1506023737
sf
#1506023790
wc ~/all_files.db
#1506023805
cat ~/all_files.db |wc
#1506023830
sf
#1506023830
sf
#1506023835
snf
#1506023912
cat "~/all_files.db"|fzy -l 20
#1506023944
cat ~/all_files.db|fzy -l 20
#1506231280
ls
#1506231292
sf
#1506231303
snf
#1506265992
ls
#1506266007
wc lib.sh
#1506266087
echo "$TERM"
#1506266669
ls
#1506268199
cdj
#1506268201
cfh
#1506268202
cdh
#1506268204
cdd
#1506268688
vim
#1506268698
vim delete.sh 
#1506269968
cdh
#1506269976
cd .config/ranger/
#1506268867
vi door_alarm.py 
#1506270605
sf
#1506270605
sf
#1506269980
vi rc.conf 
#1506269678
r
#1506270974
cdh
#1506271059
vim
#1506271066
vim control.ahk 
#1506270989
vi my.vimrc 
#1506270980
bash
#1506273916
r
#1506280159
sf
#1506280159
sf
#1506361526
find . -ls | python -c '
import sys
for line in sys.stdin:
    r = line.strip("\n").split(None, 10)
    fn = r.pop()
    print ",".join(r) + ",\"" + fn.replace("\"", "\"\"") + "\""
' 
#1506361558
ls | python -c '
import sys
for line in sys.stdin:
    r = line.strip("\n").split(None, 10)
    fn = r.pop()
    print ",".join(r) + ",\"" + fn.replace("\"", "\"\"") + "\""
'    
#1506361565
ls
#1506361574
ls -l | python -c '
import sys
for line in sys.stdin:
    r = line.strip("\n").split(None, 10)
    fn = r.pop()
    print ",".join(r) + ",\"" + fn.replace("\"", "\"\"") + "\""
'    
#1506361685
ls -l
#1506361752
python
#1506363086
git add ssh-example.py 
#1506363650
/usr/bin/bash
#1506367057
gcm helm
#1506367064
git push
#1506367184
git ls-files|grep ssh
#1506368031
r
#1506395138
searchproject 
#1506395167
searchproject requ
#1506395234
ls "/cygdrive/c/Users/$USERNAME/Downloads/"|fzy
#1506395473
searchproject 
#1506395509
searchproject .
#1506395804
bash
#1506395465
bash
#1506395823
snf
#1506395826
spf
#1506669720
sc
#1506669723
scf
#1507041982
curl -XPUT 'http://localhost:9200/blog/post/2' -d '
{ 
    "user": "dilbert", 
    "postDate": "2011-12-12", 
    "body": "Distribution is hard. Distribution should be easy." ,
    "title": "On distributed search"
}'
#1507042001
curl -XGET 'http://localhost:9200/blog/post/2?pretty=true'
#1508053622
ex
#1508316712
alias clip
#1508316729
spf
#1508317005
alias a='cd $Universal_home'
#1508317006
a
#1508317174
snf
#1508317184
echo $Universal_home
#1508317195
cygpath -H
#1508317218
if [ "$OS" == "Windows_NT" ]; then Universal_home=$(cygpath -H)  # /cygdrive/c/cygwin64/home/username; else Universal_home=$HOME; echo "linux machine"; fi
#1508317218
Universal_home="$Universal_home/$USERNAME"
#1508317218
export Universal_home
#1508317222
echo "$Universal_home"
#1508316840
bash
#1508316758
bash
#1508316695
bash
#1508316640
bash
#1508316616
bash
#1508316603
bash
#1508317557
echo
#1508317558
echo a
#1508317565
echo $cbn_git_path
#1508317747
cat "$cbn_git_path/cbn_gits/AHK/popular_commands.db"|fzy -l 20
#1508318188
spf
#1508502180
sf
#1508572108
ex
#1508572222
s
#1508548896
wget -c https://download.fedoraproject.org/pub/fedora/linux/releases/26/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-26-1.5.iso
#1508669587
sf
#1508669587
sf
#1508669609
q
#1508669612
s
#1508669616
scf
#1508669646
searchcommands|clip
#1508669648
s
#1508669930
alias aaa='ls'
#1508669931
aaa
#1508669945
function k(){aaa}
#1508669951
function k(){aaa;}
#1508669960
function k() { aaa; }
#1508669967
aaa
#1508669969
k
#1508670065
s
#1508670071
l
#1508670074
sc
#1508670076
scf
#1508670078
s
#1508670078
s
#1508805561
searchnotes 5
#1508805614
searchnotes 7
#1508805647
searchnotes -m 7 axdepth
#1508805698
searchnotes -ma 7 axdepth
#1508805900
searchnotes maxdepth
#1508805945
searchnotes narcos
#1508805961
searchnotes -m 6 narcos
#1508806008
searchnotes narcos
#1508806240
searchnotes na
#1508806251
searchnotes narcos
#1508806280
lfind "$Universal_home/Downloads/" -maxdepth "$maxdepth" -iname "*notes*.org" -exec  echo {} +
#1508806288
lfind "$Universal_home/Downloads/" -maxdepth 5 -iname "*notes*.org" -exec  echo {} +
#1508806296
lfind "$Universal_home/Downloads/"  -iname "*notes*.org" -exec  echo {} +
#1508806339
searchnotes narcos
#1508806344
searchnotes -m 6 narcos
#1508806349
searchnotes -m 1 narcos
#1508806356
searchnotes -m 0 narcos
#1508806378
searchnotes -m 40 narcos
#1508806246
bash
#1508805890
bash
#1508805691
bash
#1508805609
bash
#1508805580
bash
#1508806558
searchnotes narco
#1508806566
searchnotes m 8 narco
#1508806573
searchnotes -m 8 narco
#1508806578
searchnotes -m 1 narco
#1508806597
searchnotes -m 3 narco
#1508806602
searchnotes -m 5 narco
#1508806607
searchnotes -m 8 narco
#1508826880
searchnotes  -m 8 narco
#1508826886
searchnotes -m 8 narco
#1508827362
searchnotes  -m 8 narco
#1508827372
searchnotes -m 8 narco
#1508828681
echo $key
#1508829409
searchnotes -m 8 narco
#1508907004
foo
#1508907007
foo -a c
#1508907011
foo -a casdf
#1508907017
foo -d casdf
#1508907002
bash
#1508907088
searchnotes -m 8 narco
#1508907127
searchnotes -m 1 narco
#1508907210
searchnotes -m 2 narco
#1508907215
searchnotes -m 4 narco
#1508907330
alias sNf='searchnotes -m 5 .|fzy -l 25' # sn fuzzy
#1508907335
alias snf
#1508907338
alias sNf
#1508907344
sNf
#1508907412
searchnotes -m 4 narcos
#1508907427
searchnotes -m 4 .|fzy
#1508907450
searchnotes -m 4 .|fzf
#1508907461
searchnotes -m 4 .|fzy
#1508907488
searchnotes -m 4 narcos
#1508907507
snf
#1508907566
alias snf
#1508907579
sNf
#1508907595
narcoss
#1508907600
snf
#1508907631
searchnotes narcos
#1508907662
snf
#1508907779
st
#1508907948
sf
#1508907948
sf
#1508907982
searchnotes narcos
#1508907988
snf
#1508907503
bash
#1509456090
sf
#1509456090
sf
#1509456098
s
#1509456098
s
#1509456116
snf
#1509456215
find ~/my-scripts/ ~/.config/ranger/ -iname rc
#1509456229
find ~/my-scripts/ ~/.config/ranger/ -iname "rc*"
#1509456236
find ~/my-scripts/ ~/.config/ranger/ -iname "fz"
#1509456243
ls ~/my-scripts/
#1509456248
find ~/my-scripts/ ~/.config/ranger/ -iname "f"
#1509456250
find ~/my-scripts/ ~/.config/ranger/ -iname "f*"
#1509456255
find ~/my-scripts/ ~/.config/ranger/ -iname "r*"
#1509456360
lfind "/media/sf_Downloads/" -maxdepth "$maxdepth" -iname "*notes*.txt" -exec  ag -i --noheading --numbers --filename --no-color --color-match "2;46" $* {} +
#1509456399
lfind "/media/sf_Downloads/" -maxdepth 1 -iname "*notes*.txt" -exec  ag -i --noheading --numbers --filename --no-color --color-match "2;46" $* {} +
#1509456535
lfind "/media/sf_Downloads/" -maxdepth 1 -iname "*notes*.txt" -exec  ag -i --noheading --numbers --filename --no-color --color-match "2;46" $* {} +   2>&1
#1509456563
lfind "/media/sf_Downloads/" -maxdepth 1 -iname "*notes*.txt" -exec  ag -i --noheading --numbers --filename --no-color --color-match "2;46" $* {} +  2>&1
#1509456592
snf
#1509457337
vim
#1509457348
s
#1509842740
cdh
#1509842749
vi myalias.sh 
#1509842995
cdh
#1509842999
vi myalias.sh 
#1509842778
vi my.vimrc 
#1509853371
s
#1509853375
alias 
#1509853379
alias s
#1509853382
ex
#1509853919
echo "\[\e[01;32m\]\u\[\e[38;5;24m\] \[\e[38;5;30m\]\w\[\e[38;5;35m\] > \[$(tput sgr0)\] "
#1510078366
cdh
#1510078370
vim myalias.sh 
#1510078640
ag
#1510078643
ag fuzzy search files in parent directory of current file
#1510078643
This command is very handy if you want to explore or edit the surrounding/neigbouring files of the file your currently editing. (e.g. files in the same directory)
#1510078643
function! s:fzf_neighbouring_files()
#1510078644
endfunction
#1510078654
ag
#1510078662
ag -G *.sh
#1510078669
ag -G *.sh function
#1510078715
ag function -G *.sh 
#1510078758
vim myalias.sh 
#1510078916
rg
#1510078953
vim myalias.sh 
#1510078989
ag
#1510079034
vim myalias.sh 
#1510158994
vim -u NONE
#1510159104
vimu
#1510159209
vim -u ~/basic.vimrc 
#1510159222
cdh
#1510159227
vim -u ~/basic.vimrc 
#1510159657
vimu
#1510159828
vimu lib.sh
#1510159823
bash
#1510159676
bash
#1510159653
bash
#1510161693
cdp
#1510161829
gdf
#1510162048
g
#1510162052
ex
#1510162197
gdf
#1510162301
l myalias.sh
#1510162313
less -isNm sh
#1510162316
l sh
#1510162328
alias l
#1510162336
less -isNm *.sh
