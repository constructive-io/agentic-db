-- Revert: schemas/agentic_db_app_public/tables/templates/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".templates 
  DROP COLUMN entity_id RESTRICT;


