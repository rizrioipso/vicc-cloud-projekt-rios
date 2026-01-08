VICC Cloud Project
Cloudflare Worker mit Terraform (Infrastructure as Code)
Projektübersicht

Dieses Repository enthält die praktische Umsetzung einer serverlosen Cloud-Applikation im Rahmen des Moduls VICC.
Die Anwendung wird auf der Plattform Cloudflare Workers betrieben und vollständig über Infrastructure as Code (Terraform) verwaltet.

Die Lösung ist öffentlich erreichbar und stellt sowohl einen Webbrowser-Endpunkt als auch einen Web-API-Endpunkt zur Verfügung.

Funktionalität
Browser-Endpunkt

URL:
https://vicc-api-worker.vicc-rios.workers.dev

Beschreibung:
Liefert eine einfache Textmeldung zur Bestätigung der Erreichbarkeit der Anwendung.

API-Endpunkt

URL:
https://vicc-api-worker.vicc-rios.workers.dev/api/health

Beschreibung:
Liefert den Status der Anwendung im JSON-Format.

Beispielantwort:

{
  "status": "ok"
}
Architektur und Technologie

Die Anwendung basiert auf einer vollständig serverlosen Architektur.

Technologie-Stack

Cloud-Plattform: Cloudflare

Compute: Cloudflare Workers (serverlos)

Programmiersprache: JavaScript

Infrastructure as Code: Terraform

Versionskontrolle: Git / GitHub

Die Anwendung läuft im globalen Cloudflare Edge Network.
Es werden keine virtuellen Maschinen oder Container betrieben.

Infrastructure as Code (Terraform)

Die Cloud-Infrastruktur wird deklarativ mit Terraform beschrieben.

Verwaltung des Cloudflare Workers als Terraform-Ressource

Reproduzierbare und versionierbare Infrastruktur

Trennung von Code und Konfigurationsdaten

Terraform-State und sensible Variablen werden nicht im Repository gespeichert.

Sicherheit

API-Tokens werden lokal in terraform.tfvars gespeichert

Diese Datei ist durch .gitignore vom Repository ausgeschlossen

Es befinden sich keine sensiblen Zugangsdaten im Repository

Tests
Browser-Test
GET /
API-Test
GET /api/health
Kommandozeilen-Test
curl https://vicc-api-worker.vicc-rios.workers.dev
curl https://vicc-api-worker.vicc-rios.workers.dev/api/health
Projektstruktur
vicc-cloud-projekt-rios/
├── app/
│   ├── worker.js
│   └── wrangler.toml
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── versions.tf
│   ├── outputs.tf
│   └── terraform.lock.hcl
├── .gitignore
└── README.md
Kontext der Arbeit

Dieses Projekt wurde im Rahmen einer schulischen Praxisarbeit umgesetzt.
Der Fokus liegt auf serverlosen Cloud-Technologien und Infrastructure as Code.

Autor

Rizzo Rios
