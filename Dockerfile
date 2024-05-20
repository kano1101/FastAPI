FROM python:3.12
ENV PYTHONUNBUFFERED=1

WORKDIR /src

RUN pip install poetry

COPY pyproject.toml* poetry.lock* ./
COPY start.sh /start.sh

RUN poetry config virtualenvs.in-project true
RUN chmod 744 /start.sh

CMD ["sh", "/start.sh"]
