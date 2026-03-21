-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/columns/content/alterations/alt0000002293


ALTER TABLE "agentic_db_app_public".chat_chunks 
  ALTER COLUMN content DROP NOT NULL;


