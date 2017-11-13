FROM centos:7
MAINTAINER Nick Hilhorst <nick.hilhorst@asr.nl>

ENV PATH="/opt/puppetlabs/puppet/bin:${PATH}"
RUN yum -y install https://yum.puppetlabs.com/puppet/puppet-release-el-7.noarch.rpm && \
    yum update -y && \
    yum install -y \
        gcc \
        make \
        ruby \
        ruby-devel \
        zlib-devel \
        libxslt-devel \
        libxml2-devel \
        puppet-agent-5.3.3-1.el7 \
        git && \
    yum clean all
    
COPY Gemfile /root/
    
RUN gem install -g /root/Gemfile --no-ri --no-rdoc
