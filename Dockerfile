FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    iverilog \
    gtkwave \
    x11-apps

WORKDIR /app

ENTRYPOINT ["/app/simulate.sh"]