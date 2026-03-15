-- Revert: schemas/agent_db_app_public/tables/activity_log/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".activity_log 
  DISABLE ROW LEVEL SECURITY;


