def verify_grammar(text)
  text[0].match?(/[A-Z]/) && (".!?".include?(text[-1]))
end