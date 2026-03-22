-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/content/alterations/alt0000002955


ALTER TABLE agentic_db_app_public.autonomy_record_chunks 
  ALTER COLUMN content DROP NOT NULL;


