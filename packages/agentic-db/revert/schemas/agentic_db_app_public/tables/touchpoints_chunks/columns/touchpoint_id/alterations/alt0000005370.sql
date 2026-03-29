-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/touchpoint_id/alterations/alt0000005370


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  ALTER COLUMN touchpoint_id DROP NOT NULL;


