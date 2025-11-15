FROM python:3.13

ARG dbt_core_ver=1.10.15
ARG dbt_postgres_ver=1.9.1

RUN python -m pip install --no-cache-dir dbt-core==${dbt_core_ver} dbt-postgres==${dbt_postgres_ver}