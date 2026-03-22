-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/entity_id/column


ALTER TABLE agentic_db_app_public.autonomy_records 
  DROP COLUMN entity_id RESTRICT;


