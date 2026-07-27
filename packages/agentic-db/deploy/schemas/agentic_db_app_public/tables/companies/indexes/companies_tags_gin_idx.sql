-- Deploy: schemas/agentic_db_app_public/tables/companies/indexes/companies_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/tags/column


CREATE INDEX companies_tags_gin_idx ON agentic_db_app_public.companies USING GIN ( tags );

