-- Revert: schemas/agent_db_app_public/tables/tools/columns/description/column


ALTER TABLE "agent_db_app_public".tools 
  DROP COLUMN description RESTRICT;


