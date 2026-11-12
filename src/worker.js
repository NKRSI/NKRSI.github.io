// Redirect nkr.si (and its subdomains) to nkrsi.io; serve static assets otherwise.
const CANONICAL_HOST = "nkrsi.io";

export default {
  async fetch(request, env) {
    const url = new URL(request.url);
    if (url.hostname === "nkr.si" || url.hostname.endsWith(".nkr.si")) {
      url.protocol = "https:";
      url.hostname = CANONICAL_HOST;
      url.port = "";
      return Response.redirect(url.toString(), 301);
    }
    return env.ASSETS.fetch(request);
  },
};
