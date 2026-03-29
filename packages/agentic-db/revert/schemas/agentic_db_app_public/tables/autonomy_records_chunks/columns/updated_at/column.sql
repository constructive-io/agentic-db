-- Revert: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.autonomy_records_chunks 
  DROP COLUMN updated_at RESTRICT;


