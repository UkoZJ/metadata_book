# Introduction

The scope of this documentation is to provide:

* Extensive metadata description of datasets that are used in the _BigBytes_ project
* Data access examples by _Python_ scripts

For metadata description, we implement the [Schema.org](https://schema.org/) protocol based on the _Dataset_ type adapted for scientific data catalogs. The metadata information is stored in `.json` files that should be validated with Google' [Structured Data Testing Tool](https://search.google.com/structured-data/testing-tool/u/0/) or [Rich Result Test](https://search.google.com/test/rich-results?utm_campaign=sdtt&utm_medium=code&id=zX-8vS_sX8Vir1CdBTMmrg). For visualization convenience, `.json` are converted into `.html` nested tables. 

```{note}
Anytime a source metadata `.json` file are modified or updated we need to run `build_info.py` to build the `html` dataset tables. 
```

Data access _Python_ scripts use metadata `.json` files to get all needed information. Scripts use a _percentage_ formatting to denote executable code cells (`# %%`) and markdown content cells (`# %% [markdown]`). This allows to use editors like _Visual Studio Code_, _Spyder_, etc. and to perform versioning control easily.

_Jupyter Book_ is used to build this documentation. Thus, data access scripts in `.py` should be converted to the `.ipynb` format by _JupyText_ application.

```{note}
After any modification to `.py` source files, we should take care to update the `ipynb` files by running `build_ipynb.sh` before building a new version of documentation.
```

## Metadata table

| Name          | Project   | Description | Licence  | Example |
| ------------- |:---------:| :-----------|:--------:|:-------:|
| [ma_analytic_tables] | Mosquito Alert| Tables from Mosquito Alert database selected for analytic purposes | Private | ✔ |
| [ma_reports] | Mosquito Alert | Yearly reports of bites, breeding sites and adult mosquito encounters | Public | ✔ |
| [ma_tigapics] | Mosquito Alert | Pictures of adult mosquitos and breeding sites with classification labels for ML traning | Public | ✔ |
| [ma_model_tables] | Mosquito Alert | Results from the Bayesian multilevel model that feed the Mosquito Alert raster maps | Public | ✖ |

[ma_analytic_tables]: ./MA/analytic_tables.html
[ma_reports]: ./raw/MA/reports.json
[ma_tigapics]: ./raw/MA/tigapics.json
[ma_model_tables]: ./processed/MA/model_tables.json

## Data Flow Diagram

```{figure} ../BigBytes.svg
:width: 600px
:name: BigBytes_dfd

BigBytes data flow diagram
```