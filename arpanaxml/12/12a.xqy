let $book :=doc("12.xml")/bib/book
let $count :=count($book[author='Abiteboul'])
return <count>{$count}</count>