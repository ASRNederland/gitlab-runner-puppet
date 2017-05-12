FROM centos:6
MAINTAINER Nick Hilhorst <nick.hilhorst@asr.nl>

RUN rpm -U https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
RUN yum update -y -q && \
    yum install -y -q ruby rubygems puppet-agent git
RUN gem install puppet-lint
RUN /opt/puppetlabs/puppet/bin/gem install rspec-puppet
RUN /opt/puppetlabs/puppet/bin/gem install puppetlabs_spec_helper
RUN gem install yaml-lint
