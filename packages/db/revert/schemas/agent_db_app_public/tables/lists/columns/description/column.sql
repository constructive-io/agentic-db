-- Revert: schemas/agent_db_app_public/tables/lists/columns/description/column


ALTER TABLE "agent_db_app_public".lists 
  DROP COLUMN description RESTRICT;


