FROM node:6.10.0

RUN apt-get update && apt-get install -y\
      python \
      python-pip \
      libpython-dev \
      unzip \
      zip

RUN pip install \
      awsebcli==3.7.4 \
      awscli==1.11.52

RUN npm install -g yarn@0.21.3 codeclimate-test-reporter@0.4.1

CMD ["node"]
