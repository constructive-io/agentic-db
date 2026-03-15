-- Deploy: schemas/agent_db_app_public/tables/documents/columns/search_tsv/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/embedding/column


ALTER TABLE "agent_db_app_public".documents 
  ADD COLUMN search_tsv tsvector;

