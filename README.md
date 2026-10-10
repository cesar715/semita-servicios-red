# Infraestructura de RED - semita.sv
Configuraciones del servidor central de red (DNS y DHCP) en fedora server.

## Estructura

- `/dns/named.conf` -Configuracion general BIND.
- `/dns/172.16.rev` -Zona de resolucion inversa IPv4.
- `/dns/ipv6.rev` -Zona de resolucion inversa IPv6.
- `/dhcp/dhcpd.conf` -Servidor DHCP IPv4.
- `/dhcp/dhcpd6.conf` -Servidor DHCP IPv6.

## Direccionamiento

- **Servidor:** 172.16.0.2 / FD00:DB7:DEA.A::2
- **Dominio:** semita.sv
