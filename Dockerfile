# Docker file to run AWS CLI, S3CMD and RDS tools.
FROM alpine

WORKDIR /tmp

RUN apk --no-cache add bash py-pip python zip
RUN pip install awscli

# Expose volume for adding credentials
VOLUME ["~/.aws"]

CMD ["/bin/bash", "--login"]
