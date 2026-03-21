-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.blueprint_chunks 
  DROP COLUMN entity_id RESTRICT;


