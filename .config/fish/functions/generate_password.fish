function generate_password --argument-names length text --description "Create a fixed length hash of the text."
  echo -n $text | shasum | openssl base64 | cut -c 1-$length | tr -d '\n' 
end
