#!/usr/bin/env bash
#
# Deploy smolla-link-metadata to a target environment on the Linode.
#
# Currently a stub: the docker compose project for smolla-link-metadata is not yet
# defined in smolla-infra. Once it is, this script will follow the same
# shape as smolla-identity-provider/deploy.sh:
#
#   docker compose pull \"${SERVICE}\"
#   docker compose up -d --no-deps --force-recreate \"${SERVICE}\"
#

set -euo pipefail

ENVIRONMENT="${1:-}"

case "${ENVIRONMENT}" in
    test|staging|prod)
        echo "smolla-link-metadata ${ENVIRONMENT} deploy: pending compose project in smolla-infra. No-op."
        ;;
    *)
        echo "usage: $0 {test|staging|prod}" >&2
        exit 1
        ;;
esac
