-- Revert: schemas/agentic_db_app_public/tables/images/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.images 
  DISABLE ROW LEVEL SECURITY;


