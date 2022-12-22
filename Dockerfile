FROM nicolasduminil/s2i-base-java11:latest
LABEL maintainer="Nicolas DUMINIL, nicolas.duminil@simplex-software.fr" description="Payara 6 Micro S2I Builder for OpenShift v3"
ENV VERSION 6.2022.1
ENV PAYARA_JAR payara-micro-${VERSION}.jar
ENV INSTALL_DIR /opt
ENV LIB_DIR ${INSTALL_DIR}/lib
ENV DEPLOYMENT_DIR ${INSTALL_DIR}/deploy
RUN curl -L -0 -o ${INSTALL_DIR}/${PAYARA_JAR} https://s3.eu-west-1.amazonaws.com/payara.fish/Payara+Downloads/6.2022.1/payara-micro-6.2022.1.jar
RUN mkdir -p ${DEPLOYMENT_DIR} \
    mkdir -p ${LIB_DIR} \
    && chown -R 1001:0 ${INSTALL_DIR} \
    && chmod -R a+rw ${INSTALL_DIR}
USER 1001
EXPOSE 8080 8181