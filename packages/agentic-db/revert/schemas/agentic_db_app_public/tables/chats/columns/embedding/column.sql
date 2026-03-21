-- Revert: schemas/agentic_db_app_public/tables/chats/columns/embedding/column


ALTER TABLE "agentic_db_app_public".chats 
  DROP COLUMN embedding RESTRICT;


