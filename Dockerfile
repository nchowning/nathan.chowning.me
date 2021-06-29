FROM nginx:stable as builder

ENV APP_DIR /app
ENV HUGO_VERSION 0.84.2

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        git

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.deb /tmp/hugo.deb
RUN dpkg -i /tmp/hugo.deb && \
    rm /tmp/hugo.deb

COPY . ${APP_DIR}

RUN cd ${APP_DIR} && \
    git submodule update --init --recursive

RUN hugo -s ${APP_DIR} -d /output


FROM nginx:stable

COPY --from=builder /output /usr/share/nginx/html
