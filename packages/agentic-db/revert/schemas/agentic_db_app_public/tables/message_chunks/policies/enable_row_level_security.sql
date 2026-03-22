-- Revert: schemas/agentic_db_app_public/tables/message_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".message_chunks 
  DISABLE ROW LEVEL SECURITY;


