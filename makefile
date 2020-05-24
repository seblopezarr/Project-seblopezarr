all: README.md

README.md: guessingame.sh
	echo "# THE UNIX WORKBENCH PROJECT" > README.md
	echo "* **By:** SEBASTIÁN LÓPEZ ARROYAVE*" >> README.md
	echo -n "\n**Date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessingame.sh**: " >> README.md
	grep -c '' guessingame.sh >> README.md

clean:
	rm README.md
