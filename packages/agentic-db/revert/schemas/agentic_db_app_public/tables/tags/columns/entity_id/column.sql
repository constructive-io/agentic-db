-- Revert: schemas/agentic_db_app_public/tables/tags/columns/entity_id/column


ALTER TABLE agentic_db_app_public.tags 
  DROP COLUMN entity_id RESTRICT;


