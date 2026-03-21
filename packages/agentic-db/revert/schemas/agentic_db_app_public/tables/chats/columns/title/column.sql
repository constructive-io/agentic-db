-- Revert: schemas/agentic_db_app_public/tables/chats/columns/title/column


ALTER TABLE "agentic_db_app_public".chats 
  DROP COLUMN title RESTRICT;


