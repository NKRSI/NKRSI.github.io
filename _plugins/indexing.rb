# Search-engine indexing switch, driven by the INDEXING environment variable.
#
#   INDEXING=true  -> nkrsi.io build (Cloudflare Workers Builds variable):
#                     robots.txt allows crawling and points to sitemap.xml.
#   unset / other  -> nkr.si build (GitHub Pages) and local builds:
#                     robots.txt disallows everything, pages get
#                     <meta name="robots" content="noindex">, no sitemap.xml.
#
# Exposed to templates as site.indexing (boolean).

INDEXING_ENABLED = %w[true 1 yes on].include?(ENV.fetch("INDEXING", "").strip.downcase)

Jekyll::Hooks.register :site, :post_read do |site|
  site.config["indexing"] = INDEXING_ENABLED
end

# jekyll-sitemap generates sitemap.xml unconditionally; drop it when indexing is off.
Jekyll::Hooks.register :site, :pre_render do |site|
  next if INDEXING_ENABLED

  site.pages.reject! { |page| page.url == "/sitemap.xml" }
end
