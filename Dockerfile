# DOCKER-VERSION	1.3.2

FROM nhoag/jmeter
MAINTAINER Nathaniel Hoag, info@nathanielhoag.com

ENV RMI_LOCALPORT 55501

EXPOSE 1099 ${RMI_LOCALPORT}

CMD /var/lib/jmeter/bin/jmeter-server \
  -Dclient.rmi.localport=${RMI_LOCALPORT} \
  -Dserver.rmi.localport=${RMI_LOCALPORT}
