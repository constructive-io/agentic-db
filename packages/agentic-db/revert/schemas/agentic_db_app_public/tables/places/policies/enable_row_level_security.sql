-- Revert: schemas/agentic_db_app_public/tables/places/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.places 
  DISABLE ROW LEVEL SECURITY;


