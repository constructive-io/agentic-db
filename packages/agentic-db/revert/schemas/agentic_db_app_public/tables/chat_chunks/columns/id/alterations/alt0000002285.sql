-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/columns/id/alterations/alt0000002285


ALTER TABLE "agentic_db_app_public".chat_chunks 
  ALTER COLUMN id DROP NOT NULL;


