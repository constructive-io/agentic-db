-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/content/alterations/alt0000002695


ALTER TABLE "agentic_db_app_public".list_chunks 
  ALTER COLUMN content DROP NOT NULL;


