FROM fedora:latest

RUN dnf update -y
RUN dnf upgrade -y
RUN dnf distro-sync -y

RUN dnf install -y git gcc make man wget curl tmux htop
RUN dnf group install -y "Development Tools"

RUN dnf install -y firewalld

RUN systemctl start firewalld
RUN systemctl enable firewalld

RUN firewall-cmd --add-service=freeipa-ldap --add-service=freeipa-ldaps
RUN firewall-cmd --add-service=freeipa-ldap --add-service=freeipa-ldaps --permanent

RUN dnf install -y freeipa-server
RUN dnf install -y freeipa-server-dns