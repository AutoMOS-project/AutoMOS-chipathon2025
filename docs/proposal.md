AutoMOS chip: LDO chip with integrated VCO
==========================================


This is our proposal for the Chipathon 2025. 

⚠️ Work in progress
__________________________________________________________________

# Project information

## Goal (2 sentences): 

- We aim to build a basic power management chip implementing a LDO as its core and including a VCO as an integrated load.

- Contribute to the glayout repository with the building blocks designer for the implementation.


## Design - High Level Proposal (2-3 sentences + Image and/or link to details)

- 1 Bandgap (1.2V) and  1 bias generator for current (PTAT, ZTC) and voltage (1V, 0.5V)

- 1 LDO (1.8V) with 0.2V of dropout 

- 1 VCO (1.8V)


## Application (1 sentence): 

We expect to use it as a power module to supply other chips such as a MCU and potentially a RF module.


## References 

- https://www.seas.ucla.edu/brweb/papers/Journals/BR_SSCM_3_2021.pdf 

- https://www.ti.com/lit/an/slva118a/slva118a.pdf

- https://www.sciencedirect.com/science/article/abs/pii/S0026271411001697 
