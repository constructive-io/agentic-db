-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/content/alterations/alt0000001440


ALTER TABLE "agentic_db_app_public".conversations_chunks 
  ALTER COLUMN content DROP NOT NULL;


