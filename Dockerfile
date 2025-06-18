FROM ubuntu:20.04

RUN apt update && apt install -y curl

COPY guild.sh /guild.sh
RUN chmod +x /guild.sh

CMD ["/guild.sh"]
