








---

## Project Overview

This repository is a simple showcase Python package demonstrating how to use [dlt](https://dlthub.com/) for data extraction and loading. The package is structured to extract data from sources and load it into parquet, DuckDB and etc, serving as a reference for integrating dlt in your own projects.

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

### Install Dependencies

Follow the steps in the [how to](#how-to) section above to set up your environment and install required packages.

### Running the Package

You can run the dlt pipeline either by installing dlt from PyPI or by referencing a specific version:

```bash
# Install latest dlt from PyPI
uv pip install -U dlt

```

The main dlt pipeline file is located at:

```
src/app/ingest/
```

Refer to this path when running or modifying the pipeline.

## Managing Secrets

Sensitive information such as API keys or credentials should be managed securely:

- **GitHub Actions:** Store secrets using [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets).
- **Databricks:** Use [Databricks Secret Scopes](https://docs.databricks.com/en/security/secrets/index.html) for secure storage.



### connect to duckdb
```bash
duckdb .../rest_api_github.duckdb
show all tables;
```
---

### create dlt from scratch
```bash
uv init
uv venv --python 3.12
uv pip install -U dlt
dlt --version
dlt init rest_api duckdb
```
