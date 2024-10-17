default: main

clean: clean-build clean-pyc clean-installer
c: clean

clean-build: ## remove build artifacts
	rm -fr build/
	rm -fr dist/
	rm -fr *.egg-info
	rm -f .coverage
	rm -f *.log
	rm -f *.spec
	rm -f *.zip

clean-installer:
	rm -fr output/
	rm -fr app.spec
	rm -f audible_player.spec
	rm -f audible_player.zip

clean-pyc: ## remove Python file artifacts
	find . -name '__pycache__' -exec rm -rf {} +
	find . -name '*~' -exec rm -f {} +

init:
	pip install -r .

init-test: init
	pip install pyinstaller

pyinstaller: clean
	pyinstaller --noconfirm --onefile --windowed \
		-n audible_player app.py
	cp README.* dist/
	7z a audible_player.zip dist/*
	7z rn audible_player.zip dist audible_player


release-test: clean
	python setup.py sdist bdist_wheel
	twine upload --repository pypitest dist/*

release-prod: clean
	python setup.py sdist bdist_wheel
	twine upload --repository pypi dist/*

release: release-test release-prod clean

main:
	python -m audible_player.main
