-- Revert: schemas/agent_db_app_public/tables/files/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".files 
  DISABLE ROW LEVEL SECURITY;


