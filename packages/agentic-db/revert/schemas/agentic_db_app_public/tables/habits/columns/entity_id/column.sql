-- Revert: schemas/agentic_db_app_public/tables/habits/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".habits 
  DROP COLUMN entity_id RESTRICT;


