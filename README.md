
# Rat-GEM: The generic genome-scale metabolic model of _Rattus norvegicus_


[![GitHub version](https://badge.fury.io/gh/sysbiochalmers%2FRat-GEM.svg)](https://badge.fury.io/gh/sysbiochalmers%2FRat-GEM)


#### Brief Model Description

This repository contains the latest version of Rat-GEM, a rat genome-scale metabolic model.

#### Citation

Manuscript under preparation

#### Model Keywords

**Utilisation:** multi-omics integrative analysis, predictive simulation
**Field:** metabolic-network reconstruction  
**Type of Model:** reconstruction, curated  
**Model source:** [Human-GEM](https://doi.org/10.1126/scisignal.aaz1482)  
**Omic source:** genomics; metabolomics  
**Taxonomic name:** _Rattus norvegicus_  
**Taxonomy ID:** [10116](https://identifiers.org/taxonomy:10116)   
**Genome ID:** [GCF_000001895.5](https://identifiers.org/insdc.gca:GCF_000001895.5)    
**Metabolic System:** general metabolism  
**Tissue:**  
**Bioreactor:**    
**Cell type:**  
**Cell line:**  
**Condition:** generic metabolism


### Model Overview

|Taxonomy | Template Model | Reactions | Metabolites| Genes |
| ------------- |:-------------:|:-------------:|:-------------:|:-----:|
|_Rattus norvegicus_ |   Human-GEM |  13101  | 8408 | 3499 |


## Installation

### Required Software
* A functional MATLAB installation (MATLAB 7.3 and higher).
* The [RAVEN toolbox](https://github.com/SysBioChalmers/RAVEN).
* The [COBRA toolbox](https://github.com/opencobra/cobratoolbox) (not necessary for most functionality).


### Dependencies - Recommended Software
* The libSBML MATLAB API (version [5.13.0](https://sourceforge.net/projects/sbml/files/libsbml/5.13.0/stable/MATLAB%20interface/) is recommended).
* [Gurobi Optimizer](http://www.gurobi.com/registration/download-reg) for any simulations.


### Installation Instructions
* Clone the [master branch](https://github.com/SysBioChalmers/Rat-GEM/tree/master) of this repository, or [download the latest release](https://github.com/SysBioChalmers/Rat-GEM/releases/latest).
* Add the directory to your MATLAB path (instructions [here](https://se.mathworks.com/help/matlab/ref/addpath.html?requestedDomain=www.mathworks.com)).


## Usage

#### Loading/saving the model

`Rat-GEM.mat` (Recommended if on `master` branch)
* Load and save using the built-in MATLAB `load()` and `save()` functions.

`Rat-GEM.xml` (SBML format)
* Load using the `importModel.m` function (from [RAVEN Toolbox](https://github.com/SysBioChalmers/RAVEN))
* Save using the `exportModel.m` function (from [RAVEN Toolbox](https://github.com/SysBioChalmers/RAVEN))


## Websites

- [Metabolic Atlas](https://metabolicatlas.org/) enables visualization and exploration of Rat-GEM content.


### Contributing

Contributions are always welcome! Please read the [contributing guideline](.github/CONTRIBUTING.md) to get started.
