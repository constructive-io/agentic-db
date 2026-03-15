-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/search_tsv/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/embedding/column


ALTER TABLE "agent_db_app_public".contacts 
  ADD COLUMN search_tsv tsvector;

