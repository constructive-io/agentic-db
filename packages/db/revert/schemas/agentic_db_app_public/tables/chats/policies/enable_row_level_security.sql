-- Revert: schemas/agentic_db_app_public/tables/chats/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".chats 
  DISABLE ROW LEVEL SECURITY;


