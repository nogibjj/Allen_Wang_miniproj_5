install: 
	pip install --upgrade pip && pip install -r requirements.txt 

format: 
	black *.py

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py $(wildcard *.py)

test: 
	python -m pytest -cov=main test_main.py

all: install format lint test

extract:
	python main.py extract

transform:
	python main.py transform

query:
	python main.py "Select * from drinks;"