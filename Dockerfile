# Build arguments
FROM purplenetworksrl/php-nginx

# Add the source
ONBUILD ARG APP_PATH
ONBUILD ADD ${APP_PATH} /app
ONBUILD ADD --chown=application ${APP_PATH} /app

# Set the working directory
ONBUILD WORKDIR /app