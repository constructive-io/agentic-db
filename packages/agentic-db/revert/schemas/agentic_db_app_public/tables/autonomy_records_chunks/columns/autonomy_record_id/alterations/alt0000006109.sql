-- Revert: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/autonomy_record_id/alterations/alt0000006109


ALTER TABLE agentic_db_app_public.autonomy_records_chunks 
  ALTER COLUMN autonomy_record_id DROP NOT NULL;


