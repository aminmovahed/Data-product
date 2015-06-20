shinyUI(pageWithSidebar(
  headerPanel("Maximum heart beat calculator:"),
  sidebarPanel(
    p("Find your maximum heart beat from below:"),
    numericInput(inputId = "Age", label = "Your age:", value = 1, min = 1, max = 100,
                 step = 1),
    radioButtons("S", "You are:",
                 c("Male" = 1,
                   "Female" = 2)),
    radioButtons("m", "Choose a method:",
                 c("Dr. Martha Gulati et al method" = "1",
                   "Londeree and Moeschberger method" = "2",
                   "Miller et al method" = "3")),
    submitButton("submit")
  ),
  mainPanel(
    h4('If you are even a semi-serious exerciser, you have probably read or heard that it is a good idea to know your resting and maximum heart rates and to track your heart rate during workouts.'),
    h4('There are several methods to caculate your maximum heart beat based on your gender and age:'),
    h3('1. Dr. Martha Gulati et al method'),
    p('Research conducted by Gulati et al. (2010) identified that the traditional male-based calculation (220-age) overestimates the maximum heart rate for age in women. They investigated the association between heart rate response to exercise testing and age with 5437 women. It was found that mean peak heart rate for women = 206 - (0.88 x age).'),
    h3('2. Londeree and Moeschberger method'),
    p('A paper by Londeree and Moeschberger (1982) from the University of Missouri-Columbia indicates that the HRmax varies mostly with age, but the relationship is not a linear one. They suggest an alternative formula of HRmax = 206.3 - (0.711 × Age) [There is no gender difference in this method].'),
    h3('3. Miller et al method'),
    p('A paper by Miller et al. (1993) proposed the following formula as a suitable formula to calculate: HRmax = 217 - (0.85 x Age) [There is no gender difference in this method].'),
    h4('Your maximum heart rate based on the chosen method is:'),
    textOutput('text1')
    
    
  )
))