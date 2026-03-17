-- Revert: schemas/agentic_db_app_public/tables/chats/columns/id/alterations/alt0000001138


ALTER TABLE "agentic_db_app_public".chats 
  ALTER COLUMN id DROP NOT NULL;


