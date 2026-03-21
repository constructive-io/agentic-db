-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/entity_id/alterations/alt0000002204


ALTER TABLE "agentic_db_app_public".workflows 
  ALTER COLUMN entity_id DROP NOT NULL;


