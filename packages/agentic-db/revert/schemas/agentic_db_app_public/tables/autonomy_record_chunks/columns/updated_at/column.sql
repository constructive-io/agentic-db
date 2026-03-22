-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.autonomy_record_chunks 
  DROP COLUMN updated_at RESTRICT;


