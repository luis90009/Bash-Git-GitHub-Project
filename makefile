README.md: guessinggame.sh
	echo "# Git, GitHub Project" > README.md
	echo "## Date:" >> README.md
	date >> README.md
	echo "## N. Lines:" >> README.md
	cat guessinggame.sh | wc -l >> README.md