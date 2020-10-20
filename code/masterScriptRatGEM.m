%
% FILE NAME:    masterScriptRatGEM.m
%
% PURPOSE: This script is for reconstruction of the Rat-GEM, by using
%          the Human-GEM as template and taking in account mouse-specific
%          pathways/reactions.
%
%


%% Load Human-GEM as template
load('Human-GEM.mat');


% convert gene identifiers from Ensembl ids to gene symbols
[grRules,genes,rxnGeneMat] = translateGrRules(ihuman.grRules,'Name','ENSG');
ihuman.grRules    = grRules;
ihuman.genes      = genes;
ihuman.rxnGeneMat = rxnGeneMat;



%% Use MA reactions identifiers 

% load reaction annotaiton files
rxnAssoc = jsondecode(fileread('humanGEMRxnAssoc.JSON'));

%replace reaction identifiers with MA ids if available
ind = getNonEmptyList(rxnAssoc.rxnMAID);
ihuman.rxns(ind) = rxnAssoc.rxnMAID(ind);



%% Generate Rat-GEM using Human-GEM as template

% get ortholog pairs from human to rat
ratOrthologPairs = extractAllianceGenomeOrthologs('human2RatOrthologs.json');
ratGEM = getModelFromOrthology(ihuman, ratOrthologPairs);
ratGEM.id = 'Rat-GEM';



%% Incorporate rat-specific reactions

% get metabolic networks based on the KEGG annoation using function getKEGGModelForOrganism 
KEGG_human=getKEGGModelForOrganism('hsa');
KEGG_rat=getKEGGModelForOrganism('rno');

% remove shared human reactions
RatSpecificRxns=setdiff(KEGG_rat.rxns,KEGG_human.rxns);

% remove reactions included in Human-GEM
RatSpecificRxns=setdiff(RatSpecificRxns,rxnAssoc.rxnKEGGID);

% get species-specific network for manual inspection
ratSpecificNetwork=removeReactions(KEGG_rat, setdiff(KEGG_rat.rxns,RatSpecificRxns), true, true, true);

% organize species-specific pathways into two tsv files:
% "ratSpecificMets.tsv" contains new metabolites
metsToAdd = importTsvFile('ratSpecificMets.tsv');

% "ratSpecificRxns.tsv" contains new reactions
rxnsToAdd = importTsvFile('ratSpecificRxns.tsv');
rxnsToAdd.subSystems = cellfun(@(s) {{s}}, rxnsToAdd.subSystems);

% integrate rat-specific metabolic network
[ratGEM, modelChanges] = addMetabolicNetwork(ratGEM, rxnsToAdd, metsToAdd);



%% Save the generated model into Matlab, Yaml and SBML formats

save('../model/Rat-GEM.mat', 'ratGEM');
writeHumanYaml(ratGEM, '../model/Rat-GEM.yml');
exportModel(ratGEM, '../model/Rat-GEM.xml');


