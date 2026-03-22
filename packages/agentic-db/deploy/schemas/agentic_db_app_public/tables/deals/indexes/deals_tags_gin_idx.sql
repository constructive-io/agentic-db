-- Deploy: schemas/agentic_db_app_public/tables/deals/indexes/deals_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/companies/indexes/companies_tags_gin_idx


CREATE INDEX deals_tags_gin_idx ON agentic_db_app_public.deals USING GIN ( tags );

