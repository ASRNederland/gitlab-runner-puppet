FROM centos:6
MAINTAINER Nick Hilhorst <nick.hilhorst@asr.nl>

RUN rpm -U https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
RUN yum update -y -q && yum install -y -q ruby rubygems telnet git ping wget
RUN gem install puppet-lint && gem install rspec-puppet
