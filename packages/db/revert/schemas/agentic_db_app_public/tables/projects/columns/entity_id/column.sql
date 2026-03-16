-- Revert: schemas/agentic_db_app_public/tables/projects/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN entity_id RESTRICT;


