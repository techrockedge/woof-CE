#!/bin/sh

. etc/DISTRO_SPECS

rm -f root/.jwm/jwmrc-personal_old

# windows are slow to move or resize if drawing is slow
if [ ! -f usr/bin/startxwayland ]; then
    case "${DISTRO_TARGETARCH}" in
        x86*) ;;
        *) sed 's/>opaque</>outline</g' -i root/.jwm/jwmrc-personal root/.jwm/backup/jwmrc-personal ;;
    esac
fi