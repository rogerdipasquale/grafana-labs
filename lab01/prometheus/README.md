# Prometheus

## Install prometheus server

```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm upgrade -i -n prometheus --create-namespace prometheus prometheus-community/prometheus -f values.yaml
```

Installation with [values.yaml](values.yaml) will setup scraping Jboss7 service.

In order to check metrics using prometheus server, you can run:

```bash
kubectl port-forward svc/prometheus-server 8081:80 -n prometheus
```

then access `http://127.0.0.1:8081`
