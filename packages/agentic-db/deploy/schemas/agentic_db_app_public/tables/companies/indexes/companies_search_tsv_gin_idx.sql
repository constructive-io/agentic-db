-- Deploy: schemas/agentic_db_app_public/tables/companies/indexes/companies_search_tsv_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/search_tsv/column


CREATE INDEX companies_search_tsv_gin_idx ON "agentic_db_app_public".companies USING GIN ( search_tsv );

