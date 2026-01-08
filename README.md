
# VICC Cloud Project  
## Cloudflare Worker mit Terraform (Infrastructure as Code)

---

## Projektübersicht

Dieses Repository enthält die praktische Umsetzung einer serverlosen Cloud-Applikation im Rahmen des Moduls **VICC**.  
Die Anwendung wird auf der Plattform **Cloudflare Workers** betrieben und vollständig über **Infrastructure as Code (Terraform)** verwaltet.

Die Lösung ist öffentlich erreichbar und stellt sowohl einen **Browser-Endpunkt** als auch einen **Web-API-Endpunkt** zur Verfügung.

---

## Funktionalität

### Browser-Endpunkt

**URL:**  
https://vicc-api-worker.vicc-rios.workers.dev

**Beschreibung:**  
Liefert eine einfache Textmeldung zur Bestätigung der Erreichbarkeit der Anwendung.

---

### API-Endpunkt

**URL:**  
https://vicc-api-worker.vicc-rios.workers.dev/api/health

**Beschreibung:**  
Liefert den Status der Anwendung im JSON-Format.

**Beispielantwort:**

```json
{
  "status": "ok"
}
```

## Autor
Rizzo Rios
