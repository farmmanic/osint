FROM python:3.13.0a3
COPY . /app
WORKDIR /app
RUN pip3 install .
RUN python3 -m osint --test --targets "https://www.test.com" --ports "21,22,80"
CMD /bin/bash
