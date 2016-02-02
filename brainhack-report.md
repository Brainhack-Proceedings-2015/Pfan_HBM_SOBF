---
event: '2015 OHBM Hackathon (HI)'

title:  'Self-Organization and Brain Function'

author:

- initials: JPP
  surname: Pfannmoller
  firstname: J. P.
  email: pfannmoelj@uni-greifswald.de 
  affiliation: aff1
  corref: aff1
- initials: RM
  surname: Mesquita
  firstname: R.
  email: user@campinas.br
  affiliation: aff2
- initials: LCTH
  surname: Herrera
  firstname: L.C.T.
  email: herrera@campinas.br 
  affiliation: aff2
- initials: DD
  surname: Dentico
  firstname: Daniela
  email: dentico@wisc.edu 
  affiliation: aff3
	
affiliations: 

- id: aff1
  orgname: 'Functional Imaging Unit, Center for Diagnostic Radiology, Unviersity Medicine Greifswald'
  street: University Strasse
  postcode: 10001
  city: Greifswald
  state: Greeifswald
  country: Germany
- id: aff2
  orgname: 'Institute of Physics, University of Campinas'
  street: St
  postcode: 10001
  city: Campinas
  state: Campinas
  country: Brazil
- id: aff3
  orgname: 'Waisman Center, University of Wisconsin'
  street: St
  postcode: 10001
  city: Madison
  state: Wisconsin
  country: USA
  
url: https://github.com/SOBF

coi: None

acknow: The authors would like to thank the organizers and attendees of the 2015 OHBM Hackathon. This work was supported by generous donations from individuals to the Center for Investigating Healthy Minds, founded and led by Dr. Richard J. Davidson.

contrib: JPP, RM, LCTH, and DD performed the project and wrote the report.
  
bibliography: brainhack-report

gigascience-ref: REFXXX
...

#Introduction
To investigate self-organizing properties of the ocular dominance columns in the primary visual cortex computationally, using the Swift-Hohenberg equation \cite{Hohenberg1992}.

Self-organization is a fundamental property of complex systems, describing the order spontaneously arising by the local interactions of the system components not mediated by top-down inputs. Though self-organizing systems typically possess a large number of components and exhibit complex dynamics, their evolution is deterministic and governed by a small number of order parameters. This property is used here to model the self-organization of the ocular dominance columns of the striate cortex in patterns of neighboring stripes, which respond preferentially to inputs from the left or the right eye.

#Approach
The Swift-Hohenberg equation was used to model the self-organization of the ocular dominance columns. There are two order parameters in this equation, the first one determines the spatial wavelength $\lambda$ of the stripes and the second one the branchiness $\epsilon$ of the pattern. The algorithm used to generate the results has been modified from an open source script.

#Results
Figures (a), (b) and (c) show the temporal evolution of the solution to the Swift-Hohenberg equation for random initial conditions (a), constant $\epsilon$ and time increasing from (a) to (c). In (c), (d) and (e) three solutions with different $\epsilon$ are shown. The branchiness increases with $\epsilon$ from (c) to (e). The wavelength $\lambda$ was set to the same value in all figures and the pattern in (d) is similar to the ocular dominance layers found in the visual cortex.


\begin{figure*}[h!]
  \includegraphics[width=.98\textwidth]{ocular_dominace.png}
  \caption{\label{centfig} Figure.}
\end{figure*}



# Conclusions
A simple model suffices to study basic properties of ocular dominance self-organization. Possibly, a combination with models for self-organization in neighboring cortical layers would allow to investigate higher organizational principles of the cortex \cite{Reichl2012}, e.g. the coordination between ocular dominance, orientation, and cytochrome oxidase.