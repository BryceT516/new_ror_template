FROM ror_app_base

USER user

WORKDIR /app

CMD ["rails", "server", "-b", "0.0.0.0"]