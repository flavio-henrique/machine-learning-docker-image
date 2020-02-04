
# FROM python:3.6.10-alpine3.11
# FROM python:3.7.2-alpine3.9

FROM python:3.6-alpine3.7 

RUN apk --no-cache add --virtual .builddeps gcc gfortran musl-dev     && pip install numpy==1.14.0     && apk del .builddeps     && rm -rf /root/.cache

RUN apk --no-cache add lapack libstdc++     && apk --no-cache add --virtual .builddeps g++ gcc gfortran musl-dev lapack-dev     && pip install scipy==1.0.0     && apk del .builddeps     && rm -rf /root/.cache

RUN apk --no-cache add --virtual .builddeps g++ musl-dev     && pip install scikit-learn==0.19.1     && apk del .builddeps     && rm -rf /root/.cache
