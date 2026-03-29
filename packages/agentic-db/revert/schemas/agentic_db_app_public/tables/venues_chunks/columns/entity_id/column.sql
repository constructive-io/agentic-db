-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.venues_chunks 
  DROP COLUMN entity_id RESTRICT;


