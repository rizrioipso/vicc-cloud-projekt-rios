export default {
  async fetch(request) {
    const url = new URL(request.url);

    // Browser-Endpoint
    if (url.pathname === "/") {
      return new Response("Hello from VICC Cloud Project (Cloudflare Worker)", {
        headers: { "content-type": "text/plain; charset=utf-8" },
      });
    }

    // API-Endpoint (JSON)
    if (url.pathname === "/api/health") {
      return new Response(JSON.stringify({ status: "ok" }), {
        headers: { "content-type": "application/json; charset=utf-8" },
      });
    }

    return new Response("Not Found", { status: 404 });
  },
};
