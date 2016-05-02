FROM centos:6
MAINTAINER Nick Hilhorst <nick.hilhorst@asr.nl>

RUN rpm -U https://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
RUN yum update -y -q && \
    yum install -y -q ruby rubygems puppet git
RUN gem install puppet-lint
RUN gem install rspec-puppet
RUN gem install yaml-lint
RUN gem install i18n -v '=0.6.11'
RUN gem install activesupport -v '=4.0.0'
RUN gem install actionpack -v '=4.0.0
RUN gem install rainbow -v '=2.0.0'
RUN gem install rails-erb-check
RUN gem install rails-erb-lint
