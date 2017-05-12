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
        rubygems \
        puppet-agent-1.7.1-1.el7 \
        git
#RUN gem install actionpack -v 4.2.7.1 --no-ri --no-rdoc
#RUN gem install activesupport -v 4.2.7.1 --no-ri --no-rdoc
RUN gem install --minimal-deps --no-ri --no-rdoc \
        rake \
        yaml-lint \
        puppet-lint \
        rails-erb-check \
        rails-erb-lint \
        ruby-lint
RUN /opt/puppetlabs/puppet/bin/gem install rspec-puppet puppetlabs_spec_helper --no-ri --no-rdoc 
