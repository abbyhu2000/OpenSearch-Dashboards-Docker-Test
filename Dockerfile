# Use an official Node.js runtime as the base image
FROM node:14.20.1

RUN useradd -u 1002 -d /home/osd-dev -m -k /etc/skel osd-dev
USER osd-dev

# Set the working directory
WORKDIR /docker-workspace

RUN git clone https://github.com/opensearch-project/OpenSearch-Dashboards.git
WORKDIR /docker-workspace/OpenSearch-Dashboards

# Install dependency
RUN yarn osd bootstrap
