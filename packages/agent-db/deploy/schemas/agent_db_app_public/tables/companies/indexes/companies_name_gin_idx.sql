-- Deploy: schemas/agent_db_app_public/tables/companies/indexes/companies_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/name/column
-- requires: schemas/agent_db_app_public/tables/contacts/indexes/contacts_last_name_gin_idx


CREATE INDEX companies_name_gin_idx ON "agent_db_app_public".companies USING gin ( name gin_trgm_ops );

