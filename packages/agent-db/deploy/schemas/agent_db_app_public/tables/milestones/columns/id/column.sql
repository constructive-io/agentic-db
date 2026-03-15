-- Deploy: schemas/agent_db_app_public/tables/milestones/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/search_tsv/column


ALTER TABLE "agent_db_app_public".milestones 
  ADD COLUMN id uuid;

