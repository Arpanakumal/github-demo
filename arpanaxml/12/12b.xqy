let $book :=doc("12.xml")/bib/book
for $author in distinct-values($book/author)
let  $count :=count($book[author=$author])
return <author>
<name>{$author}</name>
<bookcount>{$count}</bookcount>
</author>