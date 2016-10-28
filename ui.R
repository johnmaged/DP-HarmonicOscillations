library(shiny)

shinyUI(fluidPage(
  titlePanel("Data Products Project - Part 1 - Harmonic Oscillations"),
  fluidRow(
    p("Oscillatory motion is everywhere in nature. Any object which has both inertia and a restoring force
       will oscillate around an equilibrium position if displaced from that equilibrium. Describing the motions 
       of objects that oscillate about a point of equilibrium, as with the motion of any object, requires a solid 
       understanding of Newton's laws. It is useful at this point to review the essential ideas contained in those
       laws. The descriptions of the motions of masses on springs, pendula, marbles oscillating about in the bottom
       of a bowl, and even the periodic motions of buildings or bridges or violin strings will follow from understanding 
       the forces acting and then solving Newton's second law."),    
    p("This application illustrates superpositions of harmonic oscillations. 
      They play an important role in for instance musical instruments: 
      The displacement of a string of a guitar or the air pressure inside a trupet are described by harmonic oscillations 
      as functions of both position and time. In general, the dynamics of such a string or the air pressure are not described 
      by an oscillation of one single frequency, but by a superposition (i.e. sum) of multiple frequencies, 
      each with a specific amplitude. "),
    p("In a musical instrument, such a superposition consists of a fundamental frequency and integer multiples of the 
      latter, commonly called overtones or harmonics. All these frequencies correspond to individual notes, and in a 
      superposition they form an interval or a chord. Here, you can create a superposition of the first six 
      harmonics, corresponding to the notes C - C - G - C - E - G on a brass instrument for instance, using the sliders in the 
      left panel. Both the resulting superposition (top) and the individual harmonics with their amplitudes (bottom) are plotted
      in the right panel. ")
    ),
  sidebarLayout(
    sidebarPanel(
      sliderInput('f1', 'First Harmonic (fundamental frequency)',value = 1, min = 0, max = 1, step = 0.01),
      sliderInput('f2', 'Second Harmonic',value = 0, min = 0, max = 1, step = 0.01),
      sliderInput('f3', 'Third Harmonic',value = 0, min = 0, max = 1, step = 0.01),
      sliderInput('f4', 'Fourth Harmonic',value = 0, min = 0, max = 1, step = 0.01),
      sliderInput('f5', 'Fifth Harmonic',value = 0, min = 0, max = 1, step = 0.01),
      sliderInput('f6', 'Sixth Harmonic',value = 0, min = 0, max = 1, step = 0.01)
    ),
    mainPanel(
      plotOutput('sumPlot'),
      plotOutput('componentsPlot')
    )
  )
    ))