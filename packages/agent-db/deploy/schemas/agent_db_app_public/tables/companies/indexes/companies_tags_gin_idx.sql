-- Deploy: schemas/agent_db_app_public/tables/companies/indexes/companies_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/contacts/indexes/contacts_tags_gin_idx


CREATE INDEX companies_tags_gin_idx ON "agent_db_app_public".companies USING GIN ( tags );

