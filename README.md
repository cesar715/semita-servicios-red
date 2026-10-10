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

## 🚀 Guía de Instalación y Despliegue para el Equipo

Para desplegar y probar estas configuraciones en las máquinas virtuales de VirtualBox, sigan las instrucciones según el sistema operativo:

### 1. Clonar el Repositorio

En cualquier máquina virtual (Fedora o Ubuntu), abran la terminal y ejecuten:


git clone [https://github.com/cesar715/semita-servicios-red.git](https://github.com/cesar715/semita-servicios-red.git)
cd semita-servicios-red

Configuración en Fedora Server (Servidor DNS/DHCP

# Copiar configuraciones DNS (BIND)
sudo cp dns/named.conf /etc/named.conf
sudo cp dns/*.rev /var/named/

# Copiar configuraciones DHCP
sudo cp dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf
sudo cp dhcp/dhcpd6.conf /etc/dhcp/dhcpd6.conf

# Asignar permisos correctos a named
sudo chown named:named /var/named/*.rev

# Reiniciar servicios
sudo systemctl restart named
sudo systemctl restart dhcpd
sudo systemctl restart dhcpd6

Configuración en Ubuntu Desktop (Cliente)

# Copiar configuración Netplan
sudo cp cliente-ubuntu/*.yaml /etc/netplan/
sudo netplan apply

# Dar permisos de ejecución al script y verificar conectividad/DNS
chmod +x cliente-ubuntu/verificar-red.sh
./cliente-ubuntu/verificar-red.sh
