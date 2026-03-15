-- Deploy: schemas/agent_db_app_public/tables/projects/columns/search_tsv/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/embedding/column


ALTER TABLE agent_db_app_public.projects 
  ADD COLUMN search_tsv tsvector;

