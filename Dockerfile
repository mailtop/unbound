FROM secns/unbound:1.6.7
LABEL maintainer="Rodrigo de Avila <rodrigo.avila@mailtop.com.br>"

EXPOSE 53/udp
EXPOSE 53
EXPOSE 9167

COPY bin/unbound_exporter /usr/local/bin/unbound_exporter
COPY bin/forego /usr/local/bin/forego
COPY Procfile /Procfile
RUN ln -fs /usr/local/etc/unbound /etc/unbound

CMD ["forego", "start", "-f", "/Procfile"]

