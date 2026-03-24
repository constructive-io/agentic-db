-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/entity_id/column


ALTER TABLE agentic_db_app_public.interactions 
  DROP COLUMN entity_id RESTRICT;


