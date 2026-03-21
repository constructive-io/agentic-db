-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".chat_message_chunks 
  DISABLE ROW LEVEL SECURITY;


