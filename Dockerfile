FROM centos:6
MAINTAINER Nick Hilhorst <nick.hilhorst@asr.nl>

RUN yum update && yum install -y -q ruby rubygems && gem install puppet-lint && gem install rspec-puppet && gem install puppet
