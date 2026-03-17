-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".workflows 
  DROP COLUMN entity_id RESTRICT;


