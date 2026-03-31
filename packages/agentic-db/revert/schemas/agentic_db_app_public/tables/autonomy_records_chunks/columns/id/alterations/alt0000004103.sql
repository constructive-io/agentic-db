-- Revert: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/id/alterations/alt0000004103


ALTER TABLE agentic_db_app_public.autonomy_records_chunks 
  ALTER COLUMN id DROP NOT NULL;


