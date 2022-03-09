# NotesFile



## Overview
This is where I take notes for Chapter 3, Measure Code Coverage And Add Tests

## Topics
What to avoid when writing tests: 

1. Avoid writing tests that set and get stored properties. Such tests don't say anything about the code. They only show that the compiler works. Instead, find the
    reason why those properties are there and test those reasons. 

2. Avoid percentage targets for code coverage. This could be misleading 

3. Measure code coverage on a regular basis -maybe every two weeks 

4. Observe the the code coverage gutter every time you add a test.



## Key Takeaways
1. Edit your scheme under Test/Options to enable code coverage reporting 

2. Code coverage can be misleading, but lack of coverage is always true 

3. Covering a conditional takes two test -One for when the condition is true and the one for when it is false. (Not counting && and || operators)

4. When testing a loop, try to test what happens if the loop is executed zero times and also two times 

5. If you deliberately introduce a problem (eg deleting code) and your tests still pass, then the code isn't completely covered

6. Use the characterization test technique to capture the behavior of the existing code: write the assertions that capture the actual values. Then 
plug those values back into the assertions 
