FROM node:6.9.5

RUN apt-get update && apt-get install -y\
      python \
      python-pip \
      python-dev \
      zip

RUN pip install \
      awsebcli \
      awscli

RUN npm install -g yarn@0.19.1 codeclimate-test-reporter@0.4.1

CMD ["node"]
