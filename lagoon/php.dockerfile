ARG CLI_IMAGE
FROM ${CLI_IMAGE} as cli

FROM uselagoon/php-8.3-fpm:latest

COPY --from=cli /app /app
