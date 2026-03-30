-- Revert: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/created_at/alterations/alt0000001984


ALTER TABLE "agentic_db_app_public".autonomy_records_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


