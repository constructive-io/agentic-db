-- Revert: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/entity_id/column


ALTER TABLE agentic_db_app_public.codebase_dependencies 
  DROP COLUMN entity_id RESTRICT;


