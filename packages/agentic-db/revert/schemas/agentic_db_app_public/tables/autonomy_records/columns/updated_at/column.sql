-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/updated_at/column


ALTER TABLE agentic_db_app_public.autonomy_records 
  DROP COLUMN updated_at RESTRICT;


