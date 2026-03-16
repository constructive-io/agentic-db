-- Deploy: schemas/agent_db_app_public/tables/deals/indexes/deals_stage_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/stage/column
-- requires: schemas/agent_db_app_public/tables/companies/indexes/companies_domain_idx


CREATE INDEX deals_stage_idx ON "agent_db_app_public".deals USING BTREE ( stage );

