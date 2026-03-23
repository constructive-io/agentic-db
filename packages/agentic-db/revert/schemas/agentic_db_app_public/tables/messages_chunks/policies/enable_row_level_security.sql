-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.messages_chunks 
  DISABLE ROW LEVEL SECURITY;


