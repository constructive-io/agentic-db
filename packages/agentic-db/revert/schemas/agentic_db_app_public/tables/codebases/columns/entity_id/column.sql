-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/entity_id/column


ALTER TABLE agentic_db_app_public.codebases 
  DROP COLUMN entity_id RESTRICT;


