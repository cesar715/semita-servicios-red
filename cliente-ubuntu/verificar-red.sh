#!/bin/bash
echo "===1. Verificando Direcciones IP (v4 y v6) ==="
ip a
cat << 'EOF' > cliente-ubuntu/verificar-red.sh
#!/bin/bash
echo "===1. Verificando Direcciones IP (v4 y v6) ==="
ip a


echo "===2. Prueba DNS Inverso IPv4 ==="
nslookup 172.16.0.2

echo "===3. Prueba DNS Inverso IPv6 ==="
nslookup FD00:DB7:DEA:A::21 172.16.0.2
