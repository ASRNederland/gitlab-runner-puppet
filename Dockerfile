FROM centos:7
MAINTAINER Nick Hilhorst <nick.hilhorst@asr.nl>

RUN yum -y install https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
RUN yum update -y -q && \
    yum install -y -q \
        gcc \
        make \
        ruby \
        ruby-devel \
        zlib-devel \
        libxslt-devel \
        libxml2-devel \
        rubygem-nokogiri \
        rubygems \
        puppet \
        git
RUN gem install nokogiri -- --use-system-libraries
RUN gem install rails-erb-lint -v 1.1.6
RUN gem install \
        puppet-lint \
        rspec-puppet \
        yaml-lint \
        rails-erb-check \
        ruby-lint
