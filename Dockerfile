# Specift base image
# FROM alpine
FROM node:14-alpine

# This copies all files, but could cause issues.
WORKDIR /usr/app

# Install dependencies
# COPY from to

# Breaking up the COPY command helps us reuse the caches built up over multiple builds for files that haven't changed.
# If we change one of the source files, i.e. html etc, it would copy everything over again and reinstall dependencies.
# By copying the package.json file before hand, we can isolate it from the copy and then that rebuilds that step and RUN step if the file has changed.
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default Command
CMD ["npm", "start"]