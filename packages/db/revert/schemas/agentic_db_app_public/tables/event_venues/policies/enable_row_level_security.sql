-- Revert: schemas/agentic_db_app_public/tables/event_venues/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".event_venues 
  DISABLE ROW LEVEL SECURITY;


