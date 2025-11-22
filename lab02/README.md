# Lab 2 - Collecting Logs

In order to collect logs, we are implementing Grafana suite: 

Alloy to send local logs to Loki.
Grafana will query logs from Loki.


## Install Alloy

In the image running the application to be monitored you can install Alloy using any proposal from [Alloy documentation](https://grafana.com/docs/alloy/latest/set-up/install/).

In our case, we are installing it into the Jboss7 image.

```
curl https://github.com/grafana/alloy/releases/download/v1.11.3/alloy-linux-amd64.zip -o alloy-linux-amd64.zip

OR 


wget https://github.com/grafana/alloy/releases/download/v1.11.3/alloy-linux-amd64.zip

unzip alloy-linux-amd64.zip


```
from:
https://github.com/grafana/alloy/releases

## Install Loki
