-- Revert: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/content/alterations/alt0000001889


ALTER TABLE "agentic_db_app_public".autonomy_records_chunks 
  ALTER COLUMN content DROP NOT NULL;


