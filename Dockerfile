FROM centos:7
MAINTAINER Nick Hilhorst <nick.hilhorst@asr.nl>

RUN yum -y install https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
RUN yum update -y && \
    yum install -y \
        gcc \
        make \
        ruby \
        ruby-devel \
        zlib-devel \
        libxslt-devel \
        libxml2-devel \
        rubygem-nokogiri \
        rubygems \
        puppet-1.5.3 \
        git
RUN gem install nokogiri -- --use-system-libraries
RUN gem install actionpack -v 4.2.7.1
RUN gem install activesupport -v 4.2.7.1
RUN gem install --minimal-deps \
        puppet-lint \
        rspec-puppet \
        yaml-lint \
        rails-erb-check \
        rails-erb-lint \
        ruby-lint
