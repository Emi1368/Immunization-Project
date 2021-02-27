#test
function(){
  tabPanel("About the Project",
           HTML("<h2>More details about this project</h2>
           <p>This project is for the course Modern Applied & Computational Statistics with professor Campbell
           and I am trying to simulate What is the best strategy for immunization</p>
        <p >This shiny app wants to show the impact of different vaccination strategies. 
        This project is based on Ontario population and it simulates the immunization based
        on this province. Regarding the daily information from official government on 23 Feb 2021,
        total death in Ontario is 6918 and total infected is 302573 individuals. 
        Also, the total population in Ontario in 2021 was 14734014 (This is the 
        last official number announced by the government). </p>
        
		 <p>There are some assumptions on this project: </p>
		 
		 <h4>1.	Population</h4>
		 <p>I assume that we have a close population and there is no birth or death in the
		 population and the only death is because of Covid-19. I divided my population in 
		 two groups Under 70 and over 70, and the proportion of population for these two 
		 groups in my  simulation is just based on real data that I gathered</p>
		 
		 <h4>2.	Weekly Vaccination </h4>
		 <p>I assume that we have enough Vaccine for every one and our vaccination will
		 be finish by the end of September. So, from now that I am writing this text, 
		 we have 30 weeks by the end of September. However, I put a slider for changing
		 the weeks, because sometimes it takes a bit longer time for running the whole 
		 code for 30 weeks (if the population amount is high)</p>
		 
		 <h4>3.	Vaccine</h4>
		 <p>I assume that we have two doses of vaccine but one kind of it, and each dose
		 effects just after the injection. And also, I assume the we can inject the 
		 second dose just after the first dose.  With the first shot, we can have 52% 
		 immunity and with the second dose we can have 94% immunity. I assume that we vaccine a constant 
		 number of people each week and the number of vaccination for each week is fixed.</p>
		 
		 <h4>4.	Occupation</h4>
		 <p>In Occupation I assumed that 30% of the Ontario population work in the 
		 high-risk environment or they have to contact with people and they cannot
		 stay home during the pandemic, jobs like working in a hospital or Dental Hygienists,
		 Repository therapy Assistants, Bus Drivers, Working on a Taxi or Uber. So, 
		 they are likely to get infected than other people.</p>
		 
		 <h4>5.	The proportion of Death</h4>
		 <p>I assume that people over 70 years old, if they infected, they die with the
		 proportion of 6% and people under 70, they die with the proportion on 2% if they 
		 infected.  However, I put a slider so the user can change the rate of death for each group. </p>
		 
		 
		 <h4>6.	Getting sick</h4>
		 <p>I assume that if someone gets sick, they can get sick again and there is no antibody in their body.
		 Also I assume that they stay sick for two weeks and then either they get well or die.</p>
		 
		 

		 <h3>Define Best: </h3>
		 <p>Based on my knowledge and my simulation, I assume that the best strategy 
		 and my goal of vaccination is reducing the number of infected people and death both.
		 Because when the number of infected individuals shrink, the number of deaths come down too.
		 Also, the number of death is really important and we have to try to reduce it too. So, I
		 assume that the best strategy is the one that reduces both. 
		 (The other issue about the infection is the consequence of infection is not only death,
		 there are many temporary and permanent effects for people who get sick and scientists yet don’t
		 know about them and these problems will show themselves after some years.)</p>
		 
		 <h3>Define Complete: </h3>
		 <p>I think when the pandemic breaks and the community have the herd immunity
		 (at least 70% of the society are vaccinated) it is acceptable to say that the
		 vaccination is complete and people have immunity. And in this project, I assume 
		 that the vaccination is complete by the end of September.</p>
		 
		 <h3>Limitations</h3>
		 <p> There are some limitations in this project. I tried to make it simple. As
		 you red there are limitations in my assumptions like I have two age groups </p>
		 
		 <h2>My Strategies:</h2>
		 <p>I assume four strategies, </p>
		 <h4>Age Strategy 1: </h4>
		 <p>In here we start vaccinating with old people first. At first, we inject them 
		 the first dose, and then injecting old people the second dose. When vaccinating
		 the old people finished, we start vaccinating young people at fist one dose to
		 the rest of them and then the second dose.</p>
		 
		 <h4>Age Strategy 2: </h4>
		 <p>In here we start vaccinating with old people first. At first, we inject them 
		 the first dose, and then the rest of people the first dose. For the second dose, 
		 we start with old people again.</p>
		 <h4>Occupation Strategy1:</h4>
		 <p>In here we start vaccinating with the people who have a high-risk job, as
		 I mentioned above, and inject them two doses first, then start injecting the rest of people.</p>
		 <h4>Occupation Strategy2:</h4>
		 <p>In here we start vaccinating for the first dose with the people who have a
		 high-risk job, as I mentioned above, and then other people. And vaccinate 
		 second round starting with high-risk jobs again.</p>
		 
		 <h3>Best Strategy</h3>
		 <p>Based on my simulation, I can say that the Best strategy is: 
		 Age Strategy1 (however it has a little difference with  Occupation Strategy 1).
		 Because the number of infected people reduce faster so the number of death
		 drops too.</p>
		 <p>However, Based on the information in real world, and not just my project assumptions, because of
		 lack of caccine, it is expected that the vaccination will take longer. So based on R0 of this Uk-Covid,
		 (5.6- it means that every sick person can infect 5.6 individuals), social distancing and wearing facial
		 masks really help to reduce the number of infetted people.</p>
                
           "),#end of html part 1.
          
          
           value="aboutProject"
  )
}