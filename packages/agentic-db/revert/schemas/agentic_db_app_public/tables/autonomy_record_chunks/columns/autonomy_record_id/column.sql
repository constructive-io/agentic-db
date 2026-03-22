-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/autonomy_record_id/column


ALTER TABLE agentic_db_app_public.autonomy_record_chunks 
  DROP COLUMN autonomy_record_id RESTRICT;


