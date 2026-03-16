-- Revert: schemas/agent_db_app_public/tables/session_archives/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".session_archives 
  DISABLE ROW LEVEL SECURITY;


