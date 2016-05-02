FROM centos:7
MAINTAINER Nick Hilhorst <nick.hilhorst@asr.nl>

RUN rpm -U https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
RUN yum update -y -q && \
    yum install -y -q ruby rubygems puppet git
RUN gem install puppet-lint \
                rspec-puppet \
                yaml-lint \
                rails-erb-check \
                rails-erb-lint
