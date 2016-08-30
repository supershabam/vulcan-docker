FROM alpine:3.1

RUN apk add --update bash wget ca-certificates openssl tar \
 && wget https://github.com/digitalocean/vulcan/releases/download/v0.1.0-alpha.3/vulcan-v0.1.0-alpha.3.linux-amd64.tar.gz \
 && echo "46bbb49b4c04ceec157522a2188c030ce833c2df95839bcbfa61b4c3934fd13c  vulcan-v0.1.0-alpha.3.linux-amd64.tar.gz" | sha256sum -c - \
 && tar -xzf vulcan-v0.1.0-alpha.3.linux-amd64.tar.gz --strip-components=2 -C /usr/local/bin vulcan-v0.1.0-alpha.3.linux-amd64/bin/ \
 && rm vulcan-v0.1.0-alpha.3.linux-amd64.tar.gz
