let $name := "/home/neven/Repos/pleiades/pleiades-names.csv"
let $file := file:read-text($name)
let $lang := element list {
for $json in csv:parse($file, map { 'header': true() })//record
order by $json/nameLanguage
return $json/nameLanguage
}
return distinct-values($lang//nameLanguage)