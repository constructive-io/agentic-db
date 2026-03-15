-- Revert: schemas/agent_db_app_public/tables/recipes/columns/description/column


ALTER TABLE "agent_db_app_public".recipes 
  DROP COLUMN description RESTRICT;


