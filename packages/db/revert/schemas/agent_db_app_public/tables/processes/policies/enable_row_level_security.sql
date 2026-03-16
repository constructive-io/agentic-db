-- Revert: schemas/agent_db_app_public/tables/processes/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".processes 
  DISABLE ROW LEVEL SECURITY;


