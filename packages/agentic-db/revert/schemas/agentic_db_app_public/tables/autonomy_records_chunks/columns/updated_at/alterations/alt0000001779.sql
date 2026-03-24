-- Revert: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/updated_at/alterations/alt0000001779


ALTER TABLE "agentic_db_app_public".autonomy_records_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


