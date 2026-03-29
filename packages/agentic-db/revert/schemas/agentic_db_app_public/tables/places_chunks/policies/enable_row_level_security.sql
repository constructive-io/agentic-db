-- Revert: schemas/agentic_db_app_public/tables/places_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.places_chunks 
  DISABLE ROW LEVEL SECURITY;


