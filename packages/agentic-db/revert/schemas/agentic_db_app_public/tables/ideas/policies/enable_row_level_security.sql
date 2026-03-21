-- Revert: schemas/agentic_db_app_public/tables/ideas/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.ideas 
  DISABLE ROW LEVEL SECURITY;


