all: readme.md

readme.md: guessinggame.sh
	echo "# Title of the project: Guessing Game." >> readme.md
	echo "## Makefile execution date: $$(date)" >> readme.md
	echo "## The number of lines of code contained in guessinggame.sh: $$(wc -l guessinggame.sh | egrep -o "[0-9]+")" >> readme.md

clean:
	rm readme.md
