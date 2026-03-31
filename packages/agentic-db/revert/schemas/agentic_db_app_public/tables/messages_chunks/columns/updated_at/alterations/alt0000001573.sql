-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/updated_at/alterations/alt0000001573


ALTER TABLE "agentic_db_app_public".messages_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


