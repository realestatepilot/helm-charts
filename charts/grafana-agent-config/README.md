# Grafana Logging Konfiguration für Apps

## Architektur

* Agent auf allen Clustern ausgerollt
* LogInstance und MetricsInstance werden durch Agent gelesen und beschreiben den Datentransport zum Tower
* das wird per ArgoCD erledigt (nicht Bestandteil dieses Charts)

## Logging

* LogInstance wird pro Cluster einmalig ausgerollt
  * liest PodLogs Objekte aller Namespaces ein
  * Podlogs-Objekte werden mit diesem Helm-Chart ausgerollt als Subchart für die Applikationen
  * Damit sind Änderungen Applikationsübergreifend möglich
  * Versionierung des Helm-Charts verhindert ungewollte upgrades

# Changes
## 0.1.0
* Initale Version
* Konfigurierbare Pipeline (default cri)
* Konfigurierbarer Namespace (default ist Standard vom Agent, der Namespace in den Podlogs deployt wurde)

