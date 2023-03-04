#main ft alias and two useless alias
alias use="/bin/echo ${BASH_SOURCE:2}"
alias less="sed 's/\.sh$/_kid.sh/'"
alias ft="/bin/cat "${BASH_SOURCE[0]}" > $(use | less)";

ft
