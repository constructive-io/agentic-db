-- Revert: schemas/agent_db_app_public/tables/templates/columns/id/column


ALTER TABLE "agent_db_app_public".templates 
  DROP COLUMN id RESTRICT;


