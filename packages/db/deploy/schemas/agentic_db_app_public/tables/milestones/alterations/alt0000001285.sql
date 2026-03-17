-- Deploy: schemas/agentic_db_app_public/tables/milestones/alterations/alt0000001285
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/search_tsv/column


ALTER TABLE "agentic_db_app_public".milestones 
  DISABLE ROW LEVEL SECURITY;

