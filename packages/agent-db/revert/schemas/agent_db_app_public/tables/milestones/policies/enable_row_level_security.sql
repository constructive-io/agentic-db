-- Revert: schemas/agent_db_app_public/tables/milestones/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".milestones 
  DISABLE ROW LEVEL SECURITY;


