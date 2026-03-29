-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  DROP COLUMN entity_id RESTRICT;


