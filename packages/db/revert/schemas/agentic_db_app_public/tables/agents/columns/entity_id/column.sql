-- Revert: schemas/agentic_db_app_public/tables/agents/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".agents 
  DROP COLUMN entity_id RESTRICT;


