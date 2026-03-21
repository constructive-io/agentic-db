-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".chat_chunks 
  DISABLE ROW LEVEL SECURITY;


