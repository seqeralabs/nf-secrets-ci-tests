nextflow.enable.dsl=2

params.email = 'paolo.ditommaso@gmail.com'

process someTask {
  secret 'FOO'
  secret 'BAR'
  output: 
     stdout 
  script:
  '''
    echo "Secrets phrase: $FOO $BAR"
  '''
}

workflow {
  someTask().view()
}


