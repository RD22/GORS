# syntax=docker.io/docker/dockerfile:1

# This Dockerfile provides two stages: stage-base and stage-final
# This is in preparation for more granular stages (eg ClamAV and Fail2Ban split into their own)

#
# Base stage provides all packages, config, and adds scripts
#

FROM docker.io/debian:11-slim AS stage-base

ARG DEBIAN_FRONTEND=noninteractive
ARG DOVECOT_COMMUNITY_REPO=0
ARG LOG_LEVEL=trace

SHELL ["/bin/bash", "-e", "-o", "pipefail", "-c"]

# -----------------------------------------------
# --- Install Basic Software --------------------
# -----------------------------------------------

COPY target/bin/sedfile /usr/local/bin/sedfile
RUN chmod +x /usr/local/bin/sedfile

COPY target/scripts/build/* /build/
COPY target/scripts/helpers/log.sh /usr/local/bin/helpers/log.sh

RUN /bin/bash /build/packages.sh
