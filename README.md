
# Rat-GEM: The generic genome-scale metabolic model of _Rattus norvegicus_


[![Version](https://badge.fury.io/gh/{{organization or username}}%2F{{repository name}}.svg)](https://badge.fury.io/gh/sysbiochalmers/yeast-gem)
[![Zenodo](https://zenodo.org/badge/{{Zenodo ID}}.svg)](https://zenodo.org/badge/latestdoi/{{Zenodo ID}})
[![Gitter chat](https://badges.gitter.im/{{organization or username}}/{{repository name}}.svg)](https://gitter.im/{{organization or username}}/{{repository name}})


#### Brief Model Description

This repository contains the latest version of Rat-GEM, a rat genome-scale metabolic model.

#### Citation

Manuscript under preparation

#### Model Keywords

**Utilisation:** multi-omics integrative analysis, predictive simulation
**Field:** metabolic-network reconstruction  
**Type of Model:** reconstruction, curated  
**Model Source:** Human-GEM
**Omic Source:** genomics, metabolomics  
**Taxonomy:** _Rattus norvegicus_  
**Metabolic System:** general metabolism  
**Tissue:**  
**Bioreactor:**    
**Cell type:**  
**Cell line:**  
**Condition:** generic metabolism


### Model Overview

|Taxonomy | Template Model | Reactions | Metabolites| Genes |
| ------------- |:-------------:|:-------------:|:-------------:|:-----:|
|_Rattus norvegicus_ |   Human-GEM |    |  |  |


## Installation

### Required Software
* A functional MATLAB installation (MATLAB 7.3 and higher).
* The [RAVEN toolbox](https://github.com/SysBioChalmers/RAVEN).
* The [COBRA toolbox](https://github.com/opencobra/cobratoolbox) (not necessary for most functionality).


### Dependencies - Recommended Software
* The libSBML MATLAB API (version [5.13.0](https://sourceforge.net/projects/sbml/files/libsbml/5.13.0/stable/MATLAB%20interface/) is recommended).
* [Gurobi Optimizer](http://www.gurobi.com/registration/download-reg) for any simulations.


### Installation Instructions
* Clone the [master branch](https://github.com/SysBioChalmers/Human-GEM/tree/master) of this repository, or [download the latest release](https://github.com/SysBioChalmers/Human-GEM/releases/latest).
* Add the directory to your MATLAB path (instructions [here](https://se.mathworks.com/help/matlab/ref/addpath.html?requestedDomain=www.mathworks.com)).


## Usage

#### Loading/saving the model

`Rat-GEM.mat` (Recommended if on `master` branch)
* Load and save using the built-in MATLAB `load()` and `save()` functions.

`Rat-GEM.xml` (SBML format)
* Load using the `importModel.m` function (from [RAVEN Toolbox](https://github.com/SysBioChalmers/RAVEN))
* Save using the `exportModel.m` function (from [RAVEN Toolbox](https://github.com/SysBioChalmers/RAVEN))


## Websites

- [Metabolic Atlas](https://metabolicatlas.org/) enables visualization and exploration of Human-GEM content.


### Contributing

Contributions are always welcome! Please read the [contributing guideline](.github/CONTRIBUTING.md) to get started.
