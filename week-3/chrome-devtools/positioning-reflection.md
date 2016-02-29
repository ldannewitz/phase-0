**CSS Positioning Reflection**

Challenge 1: ![Change the Colors](/week-3/chrome-devtools/imgs/Exercise 1.png "Change the Colors")
Challenge 2: ![Column](/week-3/chrome-devtools/imgs/Exercise 2.png "Column")
Challenge 3: ![Row](/week-3/chrome-devtools/imgs/Exercise 3.png "Row")
Challenge 4: ![Make Equidistant](/week-3/chrome-devtools/imgs/Exercise 4.png "Make Equidistant")
Challenge 5: ![Squares](/week-3/chrome-devtools/imgs/Exercise 5.png "Squares")
Challenge 6: ![Footer](/week-3/chrome-devtools/imgs/Exercise 6.png "Footer")
Challenge 7: ![Header](/week-3/chrome-devtools/imgs/Exercise 7.png "Header")
Challenge 8: ![Sidebar](/week-3/chrome-devtools/imgs/Exercise 8.png "Sidebar")
Challenge 9: ![Get Creative](/week-3/chrome-devtools/imgs/Exercise 9.png "Get Creative")

1. How can you use Chrome's DevTools inspector to help you format or position elements?
  * When you click on an html element in Chrome's DevTools inspector, you can view the corresponding styling for that element in a separate window pane. You can play with the formating or positioning of elements by changing the styling code directly in the inspector.

1. How can you resize elements on the DOM using CSS?
  * There are several ways you can resize elements.
  * Change height/width
  * Change **padding** = between content and the border, changing the padding increases the overall content area
  * Change **border** = edge around the content, its size affects to element size
  * Change **margin** = area outside of the border, reserves space between elements

1. What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?
  * Static is the default positioning
  * Relative adjusts that positioned element relative to its static position, but the other elements around it retain their positions as if the positioned element had not been moved from its static position
  * Fixed and absolute, on the other hand, both remove the element from the normal flow of elements and position it relative to another item.
    * Absolute positions it relative to its first positioned ancestor, or if none, to the body
    * Fixed positions it relative to the screen
  * Easiest to use = fixed and static
  * Most difficult = relative & static

1. What are the differences between margin, border, and padding?
  * They all make up part of the overall element size but in different ways. From the center of the element out: content, padding, border, margin. Padding is the space between the content and the border. Border is simply a divider between the padded content and the margin. The margin is space outside the border.

1. What was your impression of this challenge overall? (love, hate, and why?)
  * I thought the Chrome DevTools inspector was a great way to quickly and efficiently see how the positioning commands worked and mixed with each other. Although it could have been helpful to have a video or other explanation of absolute, fixed, static, and relative positioning before throwing it all together with margins and sizing.