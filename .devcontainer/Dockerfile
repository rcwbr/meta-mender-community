# hadolint ignore=DL3006
FROM base_context

RUN pip install --no-cache-dir kas==4.8.1
# RUN pip install --no-cache-dir "cython<3.0.0" kas==4.0 --no-build-isolation

# hadolint ignore=SC2034
RUN DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get install --allow-unauthenticated --no-install-recommends -y \
    chrpath=0.16* \
    cpio=2.13* \
    diffstat=1.65* \
    gawk=1:5.2.1* \
    lz4=1.9.4* \
    zstd=1.5.4* \
  && apt-get clean \
  && apt-get autoclean \
  && apt-get autoremove \
  && rm -rf /var/cache/debconf \
  && rm -rf /var/lib/apt/lists/*
