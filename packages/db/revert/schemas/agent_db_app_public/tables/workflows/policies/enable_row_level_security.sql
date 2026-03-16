-- Revert: schemas/agent_db_app_public/tables/workflows/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".workflows 
  DISABLE ROW LEVEL SECURITY;


