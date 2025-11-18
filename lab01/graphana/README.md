# Graphana

Graphana server can be installed using:
```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm install grafana-demo grafana/grafana
```

In order to get admin password:

```bash 
kubectl get secret --namespace default grafana-demo -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
```

In order to proxy into it:

```bash
kubectl port-forward service/grafana-demo  8080:80
```

And then access using `http://127.0.0.1:8080`

## Dashboard used:


https://grafana.com/grafana/dashboards/14845-jmx-dashboard-basic/ (id: 14845)

https://grafana.com/grafana/dashboards/22784-lightweight-apm-for-opentelemetry/ seems promising, needs Loki for logs
