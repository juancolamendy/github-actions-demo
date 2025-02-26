venv:
	python -m venv .venv
	"echo: source .venv/bin/activate"

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C main.py

test:
	python -m pytest -vv test_main.py