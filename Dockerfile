FROM alpine:latest
ENV LANG en_US.UTF-8
ENV npserver=nps.thingsroot.com:7088 npckey=accesskey
RUN chmod +x ./npc
COPY ./npc /usr/bin/npc
CMD /usr/bin/npc -server=$npserver -vkey=$npckey
