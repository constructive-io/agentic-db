-- Revert: schemas/agentic_db_app_public/tables/chat_messages/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".chat_messages 
  DISABLE ROW LEVEL SECURITY;


