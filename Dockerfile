FROM alpine

COPY _opt /opt/powerline-shell
VOLUME /opt/powerline-shell

CMD ["/bin/sh", "-c", "trap 'exit 147' TERM; tail -f /dev/null & while wait ${!}; [ $? -ge 128 ]; do true; done"]
