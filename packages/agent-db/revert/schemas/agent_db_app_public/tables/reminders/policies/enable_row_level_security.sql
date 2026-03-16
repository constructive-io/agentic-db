-- Revert: schemas/agent_db_app_public/tables/reminders/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".reminders 
  DISABLE ROW LEVEL SECURITY;


