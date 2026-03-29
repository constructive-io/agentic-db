-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/entity_id/alterations/alt0000005870


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


