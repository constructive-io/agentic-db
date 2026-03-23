-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/content/alterations/alt0000001514


ALTER TABLE "agentic_db_app_public".code_chunks 
  ALTER COLUMN content DROP NOT NULL;


