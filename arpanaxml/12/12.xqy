for $x in doc ("12.xml") /bib/book
where $x/price>30
order by $x/title
return $x/title