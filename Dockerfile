FROM alpine
MAINTAINER "Riftbit ErgoZ <ergozru@riftbit.com>"

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL org.label-schema.build-date=$BUILD_DATE \
	org.label-schema.name="IoT Blynk Server Container" \
	org.label-schema.description="IoT Blynk Server Container" \
	org.label-schema.url="https://riftbit.com/" \
	org.label-schema.vcs-ref=$VCS_REF \
	org.label-schema.vcs-url="https://github.com/riftbit/docker-blynk" \
	org.label-schema.vendor="Riftbit Studio" \
	org.label-schema.version=$VERSION \
	org.label-schema.schema-version="1.0" \
	maintainer="Riftbit ErgoZ"

ARG BLYNK_SERVER_VERSION=0.29.6

RUN apk update && apk upgrade && \
		apk add --no-cache --update openjdk8-jre curl && \
		mkdir -p /blynk/data && \
		mkdir /blynk/config && \
		mkdir /logs && \
		touch /blynk/config/server.properties && \
		touch /logs/worker.log && \
		touch /logs/blynk.log && \
    curl -L https://github.com/blynkkk/blynk-server/releases/download/v${BLYNK_SERVER_VERSION}/server-${BLYNK_SERVER_VERSION}-java8.jar > /blynk/server.jar && \
		apk del --purge curl && \
		rm -rf /var/cache/apk/*

VOLUME ["/blynk/config", "/blynk/data"]

EXPOSE 7443 8080 8081 8082 8441 8442 8443 9443

CMD java -jar /blynk/server.jar -dataFolder /blynk/data -serverConfig /blynk/config/server.properties & tail -f /logs/blynk.log & tail -f /logs/worker.log
