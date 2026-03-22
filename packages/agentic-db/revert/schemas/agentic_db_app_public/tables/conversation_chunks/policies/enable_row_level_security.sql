-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".conversation_chunks 
  DISABLE ROW LEVEL SECURITY;


