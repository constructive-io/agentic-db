-- Revert: schemas/agentic_db_app_public/tables/processes/columns/entity_id/alterations/alt0000002171


ALTER TABLE "agentic_db_app_public".processes 
  ALTER COLUMN entity_id DROP NOT NULL;


