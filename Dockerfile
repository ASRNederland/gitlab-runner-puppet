FROM centos:6
MAINTAINER Nick Hilhorst <nick.hilhorst@asr.nl>

RUN rpm -U https://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
RUN yum update -y -q && \
    yum install -y -q ruby rubygems puppet git
RUN gem install puppet-lint
RUN gem install rspec-puppet
RUN gem install yaml-lint
