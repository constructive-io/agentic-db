-- Revert: schemas/agentic_db_app_public/tables/tools/columns/entity_id/column


ALTER TABLE agentic_db_app_public.tools 
  DROP COLUMN entity_id RESTRICT;


