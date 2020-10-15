FROM scratch

LABEL maintainer="Jeffrey Phillips Freeman the@jeffreyfreeman.me"

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY docker-run.sh /docker-run.sh

COPY docker-entrypoint.d /
COPY docker-run.d /


ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "/docker-run.sh" ]

