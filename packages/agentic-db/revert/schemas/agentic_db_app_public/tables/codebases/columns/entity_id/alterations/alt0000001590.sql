-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/entity_id/alterations/alt0000001590


ALTER TABLE "agentic_db_app_public".codebases 
  ALTER COLUMN entity_id DROP NOT NULL;


