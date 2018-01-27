# Convert json to yaml with Python. Requires PyYaml installed.
function json2yaml() {

   if [[ $1 =~ ".json" && $2 =~ ".yaml" ]]; then

      python -c 'import sys, yaml, json; yaml.safe_dump(json.load(sys.stdin), sys.stdout, default_flow_style=False)' < $1 > $2
      cat $2

   else

      echo "Usage: file.json file.yaml"

   fi

}

# Convert yaml to json with Python. requires PyYaml installed.
function yaml2json() {

   if [[ $1 =~ ".yaml" && $2 =~ ".json" ]]; then

      python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)' < $1 > $2
      cat $2

   else

      echo "Usage: file.yaml file.json"

   fi

}

# Converts json to yaml with Ruby
function json2yamlruby() {

   if [[ $1 =~ ".json" && $2 =~ ".yaml" ]]; then

      ruby -ryaml -rjson -e 'puts YAML.dump(JSON.parse(STDIN.read))' < $1 > $2
      cat $2

   else

      echo "Usage: file.json file.yaml"

   fi

}

# Converts yaml to json with Ruby
function yaml2jsonruby() {

   if [[ $1 =~ ".yaml" && $2 =~ ".json" ]]; then

      ruby -ryaml -rjson -e 'puts JSON.pretty_generate(YAML.load(ARGF))' < $1 > $2
      cat $2

   else

      echo "Usage: file.yaml file.json"

   fi

}

# Aliases to Bash functions
alias json2yaml='json2yaml $1 $2'
alias yaml2json='yaml2json $1 $2'
alias json2yamlruby='json2yamlruby $1 $2'
alias yaml2jsonruby='yaml2jsonruby $1 $2'
