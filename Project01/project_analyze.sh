#!/bin/bash
function todoLog(){
# Puts all #TODO into the the todo.log file
grep -r "#TODO" * --exclude=project_analyze.sh > todo.log;
echo "TODO is placed in todo.log";
}

function fileCount(){
# Outputs the count of haskell, java script, css , python, html and bash script files
haskell=$(find . -type f - name ".hs" | wc -l);
javascript=$(find . -type f - name ".js" | wc -l);
css=$(find . -type f - name ".css" | wc -l);
python=$(find  . - type f - name ".py" | wc -l);
html_v=$(find . - type f - name ".html" | wc -l);
bash_v=$(find . - type f - name ".sh" |wc -l);
echo "Haskell: $haskell, Javascript: $javascript, CSS: $css, Python: $python, HTML: $html_v, and Bash Script: $bash_v"; 
}
function easygit(){
 echo "Whole  directory or one fil? [D/F]:"
read resp
if [$resp == "D"]
then 
	git add * ;
else
	echo "Enter file name"
	read file
	git add $file
fi
	echo "Enter commit message";
	read msg
	git commit -m $msg;
	git push origin master;
}
function logError(){
 find . -name "*hs" -exec ghc  -fno -code {} \; 2>compile_fail.log
find . -name "*py" -exec python -fno -code {} \; 2>>compile_fail.log
echo"Compile Error log created";
}
