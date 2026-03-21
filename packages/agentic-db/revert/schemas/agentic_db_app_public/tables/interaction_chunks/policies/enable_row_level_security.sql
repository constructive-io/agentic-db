-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.interaction_chunks 
  DISABLE ROW LEVEL SECURITY;


