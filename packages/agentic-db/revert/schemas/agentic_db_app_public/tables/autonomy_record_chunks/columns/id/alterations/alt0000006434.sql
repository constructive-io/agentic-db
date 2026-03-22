-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/id/alterations/alt0000006434


ALTER TABLE agentic_db_app_public.autonomy_record_chunks 
  ALTER COLUMN id DROP NOT NULL;


