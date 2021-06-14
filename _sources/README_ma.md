# Introduction

The scope of this documentation is to provide:

* Extensive metadata description of **public** datasets that are used in the _Mosquito Alert_ project
* Data access examples by _Python_ scripts

For metadata description, we implement the [Schema.org](https://schema.org/) protocol based on the _Dataset_ type adapted for scientific data catalogs. The metadata information is stored in `.json` files validated with Google' [Structured Data Testing Tool](https://search.google.com/structured-data/testing-tool/u/0/) or [Rich Result Test](https://search.google.com/test/rich-results?utm_campaign=sdtt&utm_medium=code&id=zX-8vS_sX8Vir1CdBTMmrg).


## Metadata table

| Name          | Project   | Description | Licence  | Example |
| ------------- |:---------:| :-----------|:--------:|:-------:|
| {doc}`reports <../meta_ipynb/reports>` | MosquitoAlert | Yearly reports of bites, breeding sites and adult mosquito encounters | Public | ✔ |
| {doc}`tigapics <../meta_ipynb/tigapics>` | MosquitoAlert | Pictures of adult mosquitos and breeding sites with classification labels for ML traning | Public | ✔ |
| {doc}`model_tables <../meta_ipynb/model_tables>` | MosquitoAlert | Results from the Bayesian multilevel model that feed the Mosquito Alert raster maps | Public | ✔ |
