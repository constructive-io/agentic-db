-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/entity_id/alterations/alt0000011117


ALTER TABLE agentic_db_app_public.activity_logs 
  ALTER COLUMN entity_id DROP NOT NULL;


