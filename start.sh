#!/bin/sh

if [ -f pyproject.toml ]; then
  if [ -f poetry.lock ]; then
    poetry update
  else
    poetry install --no-root
  fi
fi

poetry run uvicorn api.main:app --host 0.0.0.0 --reload