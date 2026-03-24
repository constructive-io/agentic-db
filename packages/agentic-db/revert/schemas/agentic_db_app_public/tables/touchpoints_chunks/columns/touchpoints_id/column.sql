-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/touchpoints_id/column


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  DROP COLUMN touchpoints_id RESTRICT;


