-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/content/alterations/alt0000001541


ALTER TABLE "agentic_db_app_public".messages_chunks 
  ALTER COLUMN content DROP NOT NULL;


