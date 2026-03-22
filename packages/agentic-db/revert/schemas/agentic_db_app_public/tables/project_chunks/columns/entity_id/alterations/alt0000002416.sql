-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/entity_id/alterations/alt0000002416


ALTER TABLE "agentic_db_app_public".project_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


