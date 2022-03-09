# NotesFile



## Overview
This is where I take notes for Chapter 3, Measure Code Coverage And Add Tests

## Topics
What to avoid when writing tests: 

1. Avoid writing tests that set and get stored properties. Such tests don't say anything about the code. They only show that the compiler works. Instead, find the
    reason why those properties are there and test those reasons. 

2. Avoid percentage targets for code coverage. This could be misleading 
