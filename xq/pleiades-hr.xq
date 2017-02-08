let $name := "/home/neven/Repos/pleiades/pleiades-names.csv"
let $file := file:read-text($name)
for $r in csv:parse($file, map { 'header': true() })//record
where $r[nameLanguage="hr"]
return $r