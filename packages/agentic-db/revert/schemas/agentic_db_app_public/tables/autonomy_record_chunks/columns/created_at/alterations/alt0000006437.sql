-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/created_at/alterations/alt0000006437


ALTER TABLE agentic_db_app_public.autonomy_record_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


