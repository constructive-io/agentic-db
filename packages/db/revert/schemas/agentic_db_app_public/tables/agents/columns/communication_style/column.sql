-- Revert: schemas/agentic_db_app_public/tables/agents/columns/communication_style/column


ALTER TABLE "agentic_db_app_public".agents 
  DROP COLUMN communication_style RESTRICT;


