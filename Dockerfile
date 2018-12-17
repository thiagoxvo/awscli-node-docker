FROM cypress/browsers:chrome65-ff57

RUN apt-get update && apt-get install -y\
      python \
      python-pip \
      libpython-dev \
      unzip \
      zip

RUN pip install \
      awsebcli==3.7.4 \
      awscli==1.14.22

RUN npm install -g codeclimate-test-reporter@0.4.1

CMD ["node"]
