-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  DISABLE ROW LEVEL SECURITY;


