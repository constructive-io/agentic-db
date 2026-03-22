-- Revert: schemas/agentic_db_app_public/tables/memories/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.memories 
  DISABLE ROW LEVEL SECURITY;


