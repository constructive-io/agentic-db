-- Revert: schemas/agentic_db_app_public/tables/contact_events/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".contact_events 
  DISABLE ROW LEVEL SECURITY;


