-- Revert: schemas/agent_db_app_public/tables/lists/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".lists 
  DISABLE ROW LEVEL SECURITY;


