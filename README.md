# My Simple Docker App

## About

I used this app to familiarize myself with setting up docker to a basic standard and to understand how to create images and containers, troubleshooting and minimize cachebusting.

## What did I learn


### Commands

- 'docker build'
- 'docker run'
- 'docker run -t' for image tagging
- 'docker run -p' for port forwarding
- 'docker run -it' for running shell

### Steps taken

- Creating a dockerfile
  - Specifying the base image
  - Specifying a working directory
  - Specyfying what files to copy and where to copy to
  - Installing dependencies
  - Setting a default command

- Troubleshooting
  - Base Image issues
  - Missing dependencies
  - Explicit Port Forwarding
  - Minimizing Cache Busting by copying package files before copying app directory.