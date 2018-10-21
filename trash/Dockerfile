From docker.io/centos:latest

RUN mkdir /root/pip && curl https://bootstrap.pypa.io/get-pip.py > /root/pip/get-pip.py && python /root/pip/get-pip.py
RUN yum install -y net-tools && pip install shadowsocks

COPY etc/shadowsocks.json /etc/shadowsocks.json

COPY bin/start_ssserver.sh /bin/start_ssserver.sh
RUN chmod +x /bin/start_ssserver.sh

EXPOSE 9876

ENTRYPOINT /bin/start_ssserver.sh
