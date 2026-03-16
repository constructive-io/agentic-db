-- Revert: schemas/agent_db_app_public/tables/projects/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".projects 
  DISABLE ROW LEVEL SECURITY;


