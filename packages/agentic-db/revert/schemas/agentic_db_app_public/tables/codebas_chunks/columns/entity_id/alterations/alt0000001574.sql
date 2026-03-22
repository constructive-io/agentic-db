-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/entity_id/alterations/alt0000001574


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


