-- Deploy: schemas/agent_db_app_public/tables/milestones/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/embedding/column


ALTER TABLE "agent_db_app_public".milestones 
  ENABLE ROW LEVEL SECURITY;

