-- Revert: schemas/agent_db_app_public/tables/tools/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".tools 
  DISABLE ROW LEVEL SECURITY;


