function task --argument-names content target --description "Add task to omnifocus"
  open "omnifocus:///paste?target=$target&content="(string escape --style=url $content)
end
