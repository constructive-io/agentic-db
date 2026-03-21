-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/entity_id/alterations/alt0000001965


ALTER TABLE "agentic_db_app_public".tasks 
  ALTER COLUMN entity_id DROP NOT NULL;


