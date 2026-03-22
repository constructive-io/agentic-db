-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/autonomy_record_id/alterations/alt0000006446


ALTER TABLE agentic_db_app_public.autonomy_record_chunks 
  ALTER COLUMN autonomy_record_id DROP NOT NULL;


