-- Revert: schemas/agentic_db_app_public/tables/venues/columns/entity_id/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN entity_id RESTRICT;


