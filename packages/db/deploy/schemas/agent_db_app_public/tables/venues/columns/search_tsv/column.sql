-- Deploy: schemas/agent_db_app_public/tables/venues/columns/search_tsv/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/embedding/column


ALTER TABLE "agent_db_app_public".venues 
  ADD COLUMN search_tsv tsvector;

