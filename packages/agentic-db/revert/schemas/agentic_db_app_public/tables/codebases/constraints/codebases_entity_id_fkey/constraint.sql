-- Revert: schemas/agentic_db_app_public/tables/codebases/constraints/codebases_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.codebases 
  DROP CONSTRAINT codebases_entity_id_fkey;


