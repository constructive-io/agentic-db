-- Revert: schemas/agent_db_app_public/tables/chats/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".chats 
  DROP COLUMN embedding_text RESTRICT;


