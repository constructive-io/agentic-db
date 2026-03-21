-- Revert: schemas/agentic_db_app_public/tables/agents/columns/capabilities/column


ALTER TABLE "agentic_db_app_public".agents 
  DROP COLUMN capabilities RESTRICT;


