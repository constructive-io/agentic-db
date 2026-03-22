-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/content/alterations/alt0000001468


ALTER TABLE "agentic_db_app_public".conversation_chunks 
  ALTER COLUMN content DROP NOT NULL;


