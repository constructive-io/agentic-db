-- Revert: schemas/agentic_db_app_public/tables/processes/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".processes 
  DROP COLUMN entity_id RESTRICT;


