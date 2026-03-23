-- Revert: schemas/agentic_db_app_public/tables/agents/columns/description/column


ALTER TABLE "agentic_db_app_public".agents 
  DROP COLUMN description RESTRICT;


