-- Revert: schemas/agent_db_app_public/tables/contact_notes/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".contact_notes 
  DISABLE ROW LEVEL SECURITY;


