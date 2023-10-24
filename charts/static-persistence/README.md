# Static PVC

Stellt ein statisches PVC / PV her, das in Deployments verwendet werden kann. Da das PVC hier unabhängig vom Anwendungs-Deployment erzeugt wird, bleibt es beim Löschen der Anwendung erhalten.

Zusätzlich kann bei Bedarf ein Container deployt werden, der einen Datentransfer ermöglicht.

Alternativen:
* PV mit Retain statt Delete - erfordert ein manuelles Eingreifen des Admin auf Objektebene mit relativ unklarem Workflow
* StatefulSet - wird beim Löschen der Anwendung nicht entfernt. Leider wird in öffentlichen Helm-Charts nicht immer ein StatefulSet verwendet


## Anwendung
Innerhalb einer Argo-Applikation kann das Chart mehrfach genutzt werden. 



# Changes
## Initial version 0.1.0
* erzeuge PVC, nutze bestehende storageClass für Provisionierung
* erzeuge container für `kubectl cp`
