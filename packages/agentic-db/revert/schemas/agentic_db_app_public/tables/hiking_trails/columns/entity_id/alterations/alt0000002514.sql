-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/entity_id/alterations/alt0000002514


ALTER TABLE "agentic_db_app_public".hiking_trails 
  ALTER COLUMN entity_id DROP NOT NULL;


