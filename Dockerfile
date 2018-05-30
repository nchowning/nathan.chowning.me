FROM nginx:alpine

ENV SRC_DIR=/app
COPY . $SRC_DIR

RUN echo "#### Install necessary packages" && \
    apk --no-cache add \
        bash \
        make \
        python3 \
        vim \
    && echo "#### Install python packages" && \
    pip3 install --upgrade pip && \
    pip3 install -r $SRC_DIR/requirements.txt && \
    echo "#### Building site" && \
    cd $SRC_DIR && \
    make html && \
    mv $SRC_DIR/output/* /usr/share/nginx/html/ && \
    echo "#### Cleanup..." && \
    rm -rf $SRC_DIR && \
    unset SRC_DIR
