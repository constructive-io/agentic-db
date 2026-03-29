-- Revert: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/autonomy_records_id/alterations/alt0000006100


ALTER TABLE agentic_db_app_public.autonomy_records_chunks 
  ALTER COLUMN autonomy_records_id DROP NOT NULL;


