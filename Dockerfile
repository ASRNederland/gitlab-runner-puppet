FROM alpine
MAINTAINER Mark Overduin <mark.overduin@asr.nl>

RUN apk add --update \
        zlib \
        zlib-dev \
        alpine-sdk \
        libxslt-dev \
        libxml2-dev \
        ca-certificates \
        pciutils \
        ruby \
        ruby-dev \
        ruby-irb \
        ruby-rdoc \
        git \
        && \
    echo http://dl-4.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories && \
    apk add --update shadow && \
    rm -rf /var/cache/apk/*

RUN gem install --minimal-deps --no-ri --no-rdoc \
        actionpack:4.2.7.1 \
        activesupport:4.2.7.1 \
        puppet:4.10.1 \
        facter:2.4.6 \
        yaml-lint \
        puppet-lint \
        rails-erb-check \
        rails-erb-lint \
        ruby-lint \
        rspec-puppet \
        puppetlabs_spec_helper
