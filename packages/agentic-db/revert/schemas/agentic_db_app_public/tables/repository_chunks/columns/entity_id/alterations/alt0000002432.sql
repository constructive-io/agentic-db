-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/entity_id/alterations/alt0000002432


ALTER TABLE "agentic_db_app_public".repository_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


