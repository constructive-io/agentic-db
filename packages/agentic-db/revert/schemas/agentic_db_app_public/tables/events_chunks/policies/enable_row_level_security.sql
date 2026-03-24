-- Revert: schemas/agentic_db_app_public/tables/events_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".events_chunks 
  DISABLE ROW LEVEL SECURITY;


