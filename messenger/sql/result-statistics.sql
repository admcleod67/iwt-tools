SELECT search.id,
       (SELECT name FROM site WHERE site.id = search.site_id) AS site,
       search.terms,
       search.timestamp,
       COUNT(result.id) as count
FROM search
         LEFT JOIN result ON result.search_id = search.id
GROUP BY search.id
ORDER BY search.timestamp;
