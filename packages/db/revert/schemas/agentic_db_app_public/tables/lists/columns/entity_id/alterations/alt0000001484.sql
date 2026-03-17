-- Revert: schemas/agentic_db_app_public/tables/lists/columns/entity_id/alterations/alt0000001484


ALTER TABLE "agentic_db_app_public".lists 
  ALTER COLUMN entity_id DROP NOT NULL;


