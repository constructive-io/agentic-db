-- Revert: schemas/agent_db_app_public/tables/event_notes/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".event_notes 
  DISABLE ROW LEVEL SECURITY;


