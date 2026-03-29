-- Revert: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.autonomy_records_chunks 
  DROP COLUMN created_at RESTRICT;


