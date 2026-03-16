-- Revert: schemas/agent_db_app_public/tables/chats/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".chats 
  DISABLE ROW LEVEL SECURITY;


