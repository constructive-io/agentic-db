-- Revert: schemas/agentic_db_app_public/tables/venue_images/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.venue_images 
  DISABLE ROW LEVEL SECURITY;


