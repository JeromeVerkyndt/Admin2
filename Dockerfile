FROM internetsystemsconsortium/bind9:9.18

ADD named.conf /etc/bind/named.conf
ADD l1-8.zone /etc/bind/l1-8.zone
RUN chown -R bind:bind /etc/bind/

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]

