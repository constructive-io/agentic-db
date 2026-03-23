-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".hiking_trails 
  DROP COLUMN entity_id RESTRICT;


