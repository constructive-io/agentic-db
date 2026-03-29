-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/priority/column


ALTER TABLE agentic_db_app_public.autonomy_records 
  DROP COLUMN priority RESTRICT;


