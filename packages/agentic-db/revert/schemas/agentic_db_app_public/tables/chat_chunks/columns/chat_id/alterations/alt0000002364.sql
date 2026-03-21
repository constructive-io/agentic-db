-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/columns/chat_id/alterations/alt0000002364


ALTER TABLE "agentic_db_app_public".chat_chunks 
  ALTER COLUMN chat_id DROP NOT NULL;


