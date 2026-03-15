-- Deploy: schemas/agent_db_app_public/tables/milestones/alterations/alt0000001319
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/search_tsv/column


ALTER TABLE agent_db_app_public.milestones 
  DISABLE ROW LEVEL SECURITY;

