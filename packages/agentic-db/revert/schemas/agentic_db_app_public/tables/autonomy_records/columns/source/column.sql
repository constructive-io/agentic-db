-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/source/column


ALTER TABLE agentic_db_app_public.autonomy_records 
  DROP COLUMN source RESTRICT;


