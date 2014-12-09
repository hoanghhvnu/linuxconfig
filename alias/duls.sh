#alias duls='du -h --max-depth 1 | sort -k 1n'
if [ -z $1 ]; then
	dir='.'
else
	dir=$1
fi
if [ -z $2 ]; then
	maxdepth=1
else
	maxdepth=$2
fi
du -h --max-depth $maxdepth $dir | sort -h

