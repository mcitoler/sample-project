flake8:
	flake8 src

mypy:
	mypy src --config setup.cfg

lint: flake8 mypy
