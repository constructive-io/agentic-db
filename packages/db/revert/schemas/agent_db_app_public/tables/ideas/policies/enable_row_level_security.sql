-- Revert: schemas/agent_db_app_public/tables/ideas/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".ideas 
  DISABLE ROW LEVEL SECURITY;


