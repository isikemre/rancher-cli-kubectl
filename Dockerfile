FROM rancher/cli:v2.0.4
LABEL maintainer="e.isik27@gmail.com"

# Dependencies
RUN apk add --no-cache curl ca-certificates

# Install kubectl
# Note: Latest version may be found on:
# https://aur.archlinux.org/packages/kubectl-bin/
RUN curl https://storage.googleapis.com/kubernetes-release/release/v1.6.4/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl -s

# Custom Entrypoint
COPY entrypoint.sh /

ENV HOME=/config

RUN set -x && \
    chmod +x /usr/local/bin/kubectl && \
    \
    # Basic check it works.
    kubectl version --client

ENTRYPOINT ["/entrypoint.sh"]
