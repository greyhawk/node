FROM index.alauda.cn/library/node:5
RUN npm install -g cnpm
RUN cnpm install -g supervisor http-server
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        libsqlite3-dev \
        libfontconfig1-dev \
        libicu-dev \
        libfreetype6 \
        libssl-dev \
        libpng-dev \
        libjpeg-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        g++ \
        git \
        flex \
        bison \
        gperf \
        perl \
        python \
        ruby \
    && git clone --recurse-submodules https://github.com/ariya/phantomjs /tmp/phantomjs \
    && cd /tmp/phantomjs \
    && git checkout 2.1.1 \
    && ./build.py --release --confirm --silent >/dev/null \
    && mv bin/phantomjs /usr/local/bin \
    && cd \
    && apt-get purge --auto-remove -y \
        build-essential \
        g++ \
        git \
        flex \
        bison \
        gperf \
        ruby \
        perl \
        python \
    && apt-get clean \
    && rm -rf /tmp/* /var/lib/apt/lists/*