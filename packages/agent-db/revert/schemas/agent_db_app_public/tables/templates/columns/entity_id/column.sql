-- Revert: schemas/agent_db_app_public/tables/templates/columns/entity_id/column


ALTER TABLE "agent_db_app_public".templates 
  DROP COLUMN entity_id RESTRICT;


