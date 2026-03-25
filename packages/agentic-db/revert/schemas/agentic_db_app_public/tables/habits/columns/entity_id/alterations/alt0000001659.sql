-- Revert: schemas/agentic_db_app_public/tables/habits/columns/entity_id/alterations/alt0000001659


ALTER TABLE "agentic_db_app_public".habits 
  ALTER COLUMN entity_id DROP NOT NULL;


