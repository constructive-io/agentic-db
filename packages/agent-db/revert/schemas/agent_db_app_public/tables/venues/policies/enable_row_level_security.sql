-- Revert: schemas/agent_db_app_public/tables/venues/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".venues 
  DISABLE ROW LEVEL SECURITY;


