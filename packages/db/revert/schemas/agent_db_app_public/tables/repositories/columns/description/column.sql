-- Revert: schemas/agent_db_app_public/tables/repositories/columns/description/column


ALTER TABLE "agent_db_app_public".repositories 
  DROP COLUMN description RESTRICT;


