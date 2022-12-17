#!/bin/bash
IPTABLES=$(iptables -S)
IPTABLES=$(sed -e "s/^/iptables /" <<< "${IPTABLES}")
NATTABLES=$(iptables -t nat -S)
NATTABLES=$(sed -e "s/^/iptables /" <<< "${NATTABLES}")
echo "${IPTABLES}" > iptables.sh
echo "${NATTABLES}" > nat.sh
