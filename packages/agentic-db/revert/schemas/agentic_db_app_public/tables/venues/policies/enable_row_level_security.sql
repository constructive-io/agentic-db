-- Revert: schemas/agentic_db_app_public/tables/venues/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.venues 
  DISABLE ROW LEVEL SECURITY;


