-- Revert: schemas/agentic_db_app_public/tables/conversations/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.conversations 
  DISABLE ROW LEVEL SECURITY;


