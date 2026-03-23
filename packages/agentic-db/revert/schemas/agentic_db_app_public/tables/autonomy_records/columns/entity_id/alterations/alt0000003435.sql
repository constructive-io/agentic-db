-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/entity_id/alterations/alt0000003435


ALTER TABLE agentic_db_app_public.autonomy_records 
  ALTER COLUMN entity_id DROP NOT NULL;


