-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/record_type/column


ALTER TABLE agentic_db_app_public.autonomy_records 
  DROP COLUMN record_type RESTRICT;


