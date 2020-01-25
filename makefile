all: readme.md guessinggame.sh

readme.md: guessinggame.sh
	echo "# Unix workbench final assignment" > readme.md
	echo "Make was last run on $(date '+%d/%m/%Y %H:%M:%S')" >> readme.md
	echo "guessinggame.sh contains $(wc -l guessinggame.sh | egrep -o '[0-9]+') lines of code" >> readme.md

