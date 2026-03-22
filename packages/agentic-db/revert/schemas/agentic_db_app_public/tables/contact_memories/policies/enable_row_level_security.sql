-- Revert: schemas/agentic_db_app_public/tables/contact_memories/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.contact_memories 
  DISABLE ROW LEVEL SECURITY;


