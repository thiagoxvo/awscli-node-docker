FROM node:6.9.1

RUN apt-get install \
      python \
      python-pip \
      python-dev \
      zip

RUN pip install \
      awsebcli
      awscli

CMD ["node"]
