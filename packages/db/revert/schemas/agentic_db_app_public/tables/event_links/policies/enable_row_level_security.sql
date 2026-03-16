-- Revert: schemas/agentic_db_app_public/tables/event_links/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".event_links 
  DISABLE ROW LEVEL SECURITY;


