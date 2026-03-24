-- Revert: schemas/agentic_db_app_public/tables/company_events/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".company_events 
  DISABLE ROW LEVEL SECURITY;


