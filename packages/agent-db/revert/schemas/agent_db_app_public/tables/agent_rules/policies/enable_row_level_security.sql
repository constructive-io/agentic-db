-- Revert: schemas/agent_db_app_public/tables/agent_rules/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".agent_rules 
  DISABLE ROW LEVEL SECURITY;


