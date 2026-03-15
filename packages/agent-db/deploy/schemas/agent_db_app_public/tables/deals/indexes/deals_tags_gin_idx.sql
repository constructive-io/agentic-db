-- Deploy: schemas/agent_db_app_public/tables/deals/indexes/deals_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/companies/indexes/companies_tags_gin_idx


CREATE INDEX deals_tags_gin_idx ON agent_db_app_public.deals USING GIN ( tags );

