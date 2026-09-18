FROM thezake/fwz:v4
WORKDIR /usr/src/app
COPY . .
ENTRYPOINT ["bash", "start.sh"]
