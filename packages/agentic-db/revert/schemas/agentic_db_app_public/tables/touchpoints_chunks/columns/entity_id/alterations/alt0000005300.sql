-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/entity_id/alterations/alt0000005300


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


