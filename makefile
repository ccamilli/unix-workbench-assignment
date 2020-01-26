all: README.md guessinggame.sh

README.md: guessinggame.sh
	echo "# Unix workbench final assignment" > README.md
	echo "" >> README.md
	echo "Make was last run on: " >> README.md
	date '+%d/%m/%Y %H:%M:%S' >> README.md
	echo "" >> README.md
	echo "guessinggame.sh contains the following number of lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o '[0-9]+' >> README.md

clean:
	rm README.md
