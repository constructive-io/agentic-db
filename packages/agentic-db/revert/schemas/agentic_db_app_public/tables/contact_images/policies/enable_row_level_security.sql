-- Revert: schemas/agentic_db_app_public/tables/contact_images/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.contact_images 
  DISABLE ROW LEVEL SECURITY;


