FROM centos:7
MAINTAINER Nick Hilhorst <nick.hilhorst@asr.nl>

ENV PATH="/opt/puppetlabs/puppet/bin:${PATH}"
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
        puppet-agent-1.10.5-1.el7 \
        git
#RUN /opt/puppetlabs/puppet/bin/gem install --minimal-deps --no-ri --no-rdoc \

RUN gem install actionpack -v 4.2.7.1 --no-ri --no-rdoc
RUN gem install activesupport -v 4.2.7.1 --no-ri --no-rdoc

RUN gem install --minimal-deps --no-ri --no-rdoc \
        yaml-lint \
        puppet-lint \
        rails-erb-check \
        rails-erb-lint \
        ruby-lint \
        rspec-puppet \
        puppetlabs_spec_helper
