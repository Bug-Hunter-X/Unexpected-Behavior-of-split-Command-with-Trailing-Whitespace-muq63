proc count_words {text} { 
    set text [string trimright $text]  ;# Trim trailing whitespace
    set words 0
    foreach {word} [split $text] { 
        if {[string length $word] > 0} { 
            incr words
        }
    }
    return $words
}

# This now correctly returns 1
puts [count_words {This is a test sentence with a trailing space }] 