-- Revert: schemas/agentic_db_app_public/tables/tools/columns/entity_id/alterations/alt0000002194


ALTER TABLE "agentic_db_app_public".tools 
  ALTER COLUMN entity_id DROP NOT NULL;


