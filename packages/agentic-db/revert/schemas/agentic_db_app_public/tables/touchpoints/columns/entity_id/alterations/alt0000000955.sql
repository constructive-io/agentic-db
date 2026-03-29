-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/entity_id/alterations/alt0000000955


ALTER TABLE "agentic_db_app_public".touchpoints 
  ALTER COLUMN entity_id DROP NOT NULL;


