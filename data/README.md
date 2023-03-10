# Rat-GEM data

This directory contains datasets that were used for the generation and curation of Rat-GEM. The files and their contents are briefly summarized below.


- `human2RatOrthologs.tsv`: The human-rat ortholog pairs downloaded from the [Alliance of Genomes Resources](https://www.alliancegenome.org) using the following code:
```bash
curl -X \
GET "https://www.alliancegenome.org/api/homologs/9606/10116?filter.stringency=stringent&limit=50000&page=1" \
-H  "accept: application/json" | \
jq -r \
'["fromGeneId", "fromSymbol", "toGeneId", "toSymbol", "best", 
"bestReverse", "methodCount", "totalMethodCount"], (.results[] | 
[.gene["id"], .gene["symbol"], .homologGene["id"], .homologGene["symbol"], 
.best, .bestReverse, .methodCount, .totalMethodCount]) 
| @tsv' > human2RatOrthologs.tsv
```
- `ratSpecificMets.tsv` and `ratSpecificRxns.tsv`: The curated metabolic network that is not part of human metabolism but specific to rat.
- `GENES_RAT.tsv`: The information of gene ID mapping between various identifiers that was downloaded from the FTP site of [RGD](https://rgd.mcw.edu/rgdweb/homepage/).


