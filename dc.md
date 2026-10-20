---
layout: default
title: Discord
permalink: /dc/
sitemap: false
discord_redirect: true
---
{%- if site.discord_url and site.discord_url != "" %}
# Przekierowanie na Discorda...

Jeśli nie zostałeś przekierowany automatycznie, [kliknij tutaj]({{ site.discord_url }}).

<script>
  window.location.replace({{ site.discord_url | jsonify }});
</script>
{%- else %}
# Discord

Link do Discorda jest chwilowo niedostępny. Napisz do nas: [{{ site.email }}](mailto:{{ site.email }}).
{%- endif %}
