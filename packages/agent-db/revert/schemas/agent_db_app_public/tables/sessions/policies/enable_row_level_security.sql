-- Revert: schemas/agent_db_app_public/tables/sessions/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".sessions 
  DISABLE ROW LEVEL SECURITY;


