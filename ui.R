required_packages = c("shiny", "DT", "plotly")

need_install <- required_packages[!(required_packages) %in% installed.packages()]
if(length(need_install)>0){
  install.packages(need_install)
}
#load packages
lapply(required_packages, require, character.only = TRUE)

# Define UI for application that draws a histogram

navbarPage("Covid immunization Strategy",
           tabPanel(" Overview",
                    tabsetPanel(
                        tabPanel("Vaccine Distribution",
                                 HTML("<h2> Distributing vaccines</h2>
                        <p>The following table describes the quantities of COVID-19 vaccines
                        that have been delivered to provinces and territories to date.</p> 
                        <p>Doses of the vaccines will be distributed in Canada in phases, 
                        which began in December 2020.Assuming the continued supply of 
                        safe and effective vaccines, it’s expected there will be enough vaccines to 
                        immunize everyone for whom vaccines are approved and recommended. 
                        We anticipate this will be accomplished by September of 2021.</p>
                        
                        "), #HTML end
                                 uiOutput("tab"),
                                 mainPanel(
                                     DTOutput("DistVac")
                                 ) #mainpanel end
                                 
                                 
                                 
                        ), #  sub tabpanel 1 ends
                        tabPanel("vaccine agreements",
                                 HTML("
                                      <h2>Supplying Vaccine</h2>
                                      <p>The vaccine agreement with suppliers is about 116 milion 
                                      doses, delivery start on Dec 2021:</p>
                                      "), #HTML end
                                 uiOutput("tab2"),
                                 mainPanel(
                                     DTOutput("AgreeVac")
                                 ) #mainpanel 2 end
                                 
                                 
                                 
                        ), #  sub tabpanel 2 ends
                        tabPanel("Vaccine efficasy",
                                 HTML("
                                      <h3>About the Moderna COVID-19 vaccine</h3>
                                      <p>The vaccine is given by an 
                                      injection (0.5 mL) into the muscle of the arm.
                                      For the vaccine to work best, you need to 
                                      get 2 doses: a single dose and then a second
                                      dose one month apart.
                                      <p>Based on studies in about 30,000 participants,
                                      the Moderna COVID-19 vaccine was 94.1% effective
                                      in preventing COVID-19 beginning 2 weeks after
                                      the second dose. This means that people may not
                                      be fully protected against COVID-19 until at 
                                      least 14 days after the second dose.</p>
                                      "), #HTML end
                                 uiOutput("tab3"),
                                 HTML("
                                      <h3>About the Pfizer COVID-19 vaccine</h3>
                                      <p>The vaccine is given by an injection (0.3 mL)
                                      into the muscle of the arm. For the vaccine to 
                                      work best, you need to get 2 doses: a single
                                      dose and then a second dose 21 days later. </p>
                                      <p>Based on studies in about 44,000 participants,
                                      the Pfizer-BioNTech COVID-19 vaccine was 95%
                                      effective in preventing COVID-19 beginning 1 week
                                      after the second dose. This means that people
                                      may not be fully protected against COVID-19 until
                                      at least 7 days after the second dose.</p>
                                      "),
                                 uiOutput("tab4")
                        ), #subtabpanel3 ends
                        tabPanel("Age Group",
                                 HTML("
                                      <h2> Population estimates on July 1st, by age and sex</h2>
                                      "),
                                 mainPanel(
                                     DTOutput("AgeG")
                                 ) #mainpanel  end
                        ),
                        tabPanel("About R0",
                                 HTML("
                                      <h3>What Is R0? Gauging Contagious Infections</h3>
                                      <p>R0, pronounced “R naught,” is a mathematical term
                                      that indicates how contagious an infectious disease 
                                      is. It’s also referred to as the reproduction number.
                                      As an infection is transmitted to new people, it reproduces itself.</p>
                                      <p>
                                      If R0 is less than 1, each existing infection causes less
                                      than one new infection. In this case, the disease will decline
                                      and eventually die out.</p>
                                      <p>If R0 equals 1, each existing infection causes one new 
                                      infection. The disease will stay alive and stable, but 
                                      there won’t be an outbreak or an epidemic.</p>
                                      <p>If R0 is more than 1, each existing infection causes more
                                      than one new infection. The disease will be transmitted
                                      between people, and there may be an outbreak or epidemic.</p>
                                      <p>The R0 for COVID-19 is a median of 5.7, according to a 
                                      study published online in Emerging Infectious Diseases. 
                                      That’s about double an earlier R0 estimate of 2.2 to 2.7</p>
                                      <p>The 5.7 means that one person with COVID-19 can potentially
                                      transmit the coronavirus to 5 to 6 people, rather than the 2 to 
                                      3 researchers originally thought.</p>
                                      "),
                                 uiOutput("tab5")
                        )#tabsetpanel R0 end
 
                        
                    ) #tabsetpanet end
                    
                    
                    
           ), #tabPanel1 ends

           
           tabPanel("simulation with Results",
                    
                    # Application title
                    titlePanel("immunization Strategy"),
                    
                    # Sidebar with a slider input for number of bins
                    sidebarLayout(
                        sidebarPanel(
                            sliderInput("popsize",
                                        "Population size (thousand):",
                                        min = 100, max = 1000, value = 100 , step = 20
                            ),
                            
                            sliderInput("WeeklyVac", "Weekly Vaccinated (thousand):",
                                        min = 1 , max = 100, value =  17
                                        ),
                            sliderInput("seniorDeath", "Senior Death Probability",
                                        min = 0.01 , max = 0.1 , step = 0.01, value = 0.07
                            ),
                            sliderInput("youngDeath", "Young people Death Probability",
                                        min = 0.01 , max = 0.1 , step = 0.01, value = 0.02
                            ),
                            sliderInput("timeF",
                                        "Time frame (days):",
                                        min = 1, max = 30, value = 10
                            ),
                            selectInput("strategy", "Select the Strategy",
                                        c("Age Strategy 1" = 1 ,"Age Strategy2" = 2,
                                          "Occupation Strategy1" = 3, "Occupation Strategy 2" = 4)
                            ),
                            actionButton("goButton", "Go!")
                            
                        ),  #sidebarPanel
                        
                        # Show a plot of the generated distribution
                        mainPanel(
                          plotlyOutput("plot1"),
                            plotlyOutput("plot2"),
                            plotOutput("plot3")
                             )

           )    #sidebarLayout 
           ),  #tabPanel 2  ends
           
           
           tabPanel("About",
                    tabsetPanel(
                      tabPanel(
                        "About the Project",source("about.R")$value()
                        ), #subtabpanel 1 ends
                      tabPanel(
                        "About me",
                        HTML("
                             <h3>Elham Kalantari</h3>
                             <p>I am a graduate student in Statistics at Carleton University. You can see my Resume on Linkedin</p>
                             "),
                        uiOutput("linkedin")
                        ) #sebtabpanel 2 ends
                      ) # tabsetpanel ends
           ) #tabPanel 3 ends
)
