
setup:
	# source ~/.devops_capstone__app/bin/activate
	python3 -m venv ~/.devops_capstone__app

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	
	# Install hadolint
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
		chmod +x ./hadolint


lint:
	./hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint test
