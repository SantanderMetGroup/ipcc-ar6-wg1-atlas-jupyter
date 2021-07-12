FROM santandermetgroup/ipcc-wg1_atlas:0.4

# fix rstudio, https://github.com/ufo-project/ufochain/issues/3
USER root
RUN apt update -y && \
    apt install -y wget gcc-8 unzip libssl1.0.0 software-properties-common && \
    add-apt-repository -y ppa:ubuntu-toolchain-r/test && \
    apt update -y && \
    apt-get install -y --only-upgrade libstdc++6

USER $NB_USER
