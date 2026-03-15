-- Revert: schemas/agent_db_app_public/tables/events/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".events 
  DISABLE ROW LEVEL SECURITY;


