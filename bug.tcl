proc count_words {text} { 
    set words 0
    foreach {word} [split $text] { 
        if {[string length $word] > 0} { 
            incr words
        }
    }
    return $words
}

# This works correctly
puts [count_words "This is a test sentence"]

# This incorrectly returns 0 instead of 1
puts [count_words {This is a test sentence with a trailing space }] 