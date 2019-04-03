FROM fedora:29

RUN yum update -y 
RUN mkdir -p /opt/ansible && chown 1001:1001 /opt/ansible
USER 1001

ARG ANSIBLE_VERSION
ENV HOME=/opt/ansible
ENV PATH=/opt/ansible/.local/bin:$PATH
COPY install_ansible.sh /opt/ansible
RUN chmod 755 /opt/ansible/install_ansible.sh && /opt/ansible/install_ansible.sh
