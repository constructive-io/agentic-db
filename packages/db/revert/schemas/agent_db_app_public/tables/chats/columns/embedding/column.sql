-- Revert: schemas/agent_db_app_public/tables/chats/columns/embedding/column


ALTER TABLE "agent_db_app_public".chats 
  DROP COLUMN embedding RESTRICT;


