FROM dockerfile/java

MAINTAINER Javier Jerónimo <javier@jeronimosuarez.es>

RUN wget -P /opt http://product-dist.wso2.com/products/api-manager/1.8.0/wso2am-1.8.0.zip && \
    apt-get update && \
    apt-get install -y zip && \
    apt-get clean && \
    unzip /opt/wso2am-1.8.0.zip -d /opt && \
    rm /opt/wso2am-1.8.0.zip

EXPOSE 9443
CMD ["/opt/wso2am-1.8.0/bin/wso2server.sh"]
