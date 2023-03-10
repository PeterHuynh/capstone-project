
setup:

	python3 -m venv ~/.devops

install:

	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv tests/*.py

lint:

	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	chmod +x /bin/hadolint

	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code 
	
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
