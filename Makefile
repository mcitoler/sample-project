.PHONY: check_lockfile install format check_format check_types lint test

TARGETS=src tests

check_lockfile:
	poetry check --lock

install:
	poetry install --with=dev --sync

format:
	poetry run -- python -m ruff format --config=pyproject.toml $(TARGETS)

check_format:
	poetry run -- python -m ruff format --check --config=pyproject.toml $(TARGETS)

check_types:
	poetry run -- python -m mypy --config-file=pyproject.toml $(TARGETS)

lint:
	poetry run -- python -m ruff check --config=pyproject.toml $(TARGETS)

test:
	poetry run -- python -m pytest tests

pr: | check_lockfile check_format lint check_types test
