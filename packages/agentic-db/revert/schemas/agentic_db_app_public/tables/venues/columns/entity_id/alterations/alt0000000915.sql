-- Revert: schemas/agentic_db_app_public/tables/venues/columns/entity_id/alterations/alt0000000915


ALTER TABLE "agentic_db_app_public".venues 
  ALTER COLUMN entity_id DROP NOT NULL;


