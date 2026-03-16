-- Revert: schemas/agent_db_app_public/tables/templates/columns/variables/column


ALTER TABLE "agent_db_app_public".templates 
  DROP COLUMN variables RESTRICT;


