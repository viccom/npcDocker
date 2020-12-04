FROM alpine:latest
ENV LANG en_US.UTF-8
ENV npserver=nps.thingsroot.com:7088 npckey=accesskey
COPY ./npc /usr/bin/npc
RUN chmod +x /usr/bin/npc
CMD /usr/bin/npc -server=$npserver -vkey=$npckey
