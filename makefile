all: readme.md guessinggame.sh

readme.md: guessinggame.sh
	echo "# Unix workbench final assignment" > readme.md
	echo "" >> readme.md
	echo "Make was last run on: " >> readme.md
	date '+%d/%m/%Y %H:%M:%S' >> readme.md
	echo "" >> readme.md
	echo "guessinggame.sh contains the following number of lines of code: $$test" >> readme.md
	wc -l guessinggame.sh | egrep -o '[0-9]+' >> readme.md

clean:
	rm readme.md
