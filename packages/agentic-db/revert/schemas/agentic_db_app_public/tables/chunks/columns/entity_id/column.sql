-- Revert: schemas/agentic_db_app_public/tables/chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.chunks 
  DROP COLUMN entity_id RESTRICT;


