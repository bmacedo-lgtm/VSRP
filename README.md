# Virtual summer research program for future physician-scientists: supporting underrepresented minorities during the COVID-19 pandemic

MD/DO-PhD programs expect applicants to have extensive research experience; thus, those with reduced access to research opportunities may experience barriers to matriculating into these programs and then entering the physician-scientist workforce. The COVID-19 pandemic disrupted summer research programs across the United States.  

The Virtual Summer Research Program was designed to empower those from backgrounds underrepresented in medicine and science (URiMs) to pursue careers as physician-scientists. Participants engaged in a mentored research experience, where mentors and mentees were paired algorithmically, in addition to attending interactive sessions, journal clubs, social events, and regional APSA conferences. VSRP provided mentorship to 156 URiM mentees at 36 institutions, of whom 80% had summer research opportunities cancelled due to COVID-19.

`Matching.ipynb` is a Jupyter notebook that matches mentees to mentors. Pairwise scores for every possible mentor-mentee pair were generated from common research areas and interests (with a weight of 6) as well as skills that a mentor preferred that a mentee had (with a weight of 2). The algorithm returned the top three mentors for each mentee, and limited each mentor to a maximum of eight matches. Students closer to graduation and potential application to MD/DO-PhD programs were prioritized for matching.

`Analysis.r` is an R script that contains statistical analysis of survey responses from VSRP 2020 applicants. Statistical analyses were conducted in R v.3.5.2.(15) For each outcome measure, a general linear model was fit to determine whether a fixed intercept predicted the pairwise difference of pre- and post-survey responses. The alpha criterion was 0.05, and all reported p-values are Bonferroni-corrected. Plots were generated with packages ggplot2.(16,17)


Participant surveys suggest that VSRP met its primary goals of  providing access to mentors, increasing future research opportunities for participants, and empowering participants to apply to MD/DO-PhD programs.  


