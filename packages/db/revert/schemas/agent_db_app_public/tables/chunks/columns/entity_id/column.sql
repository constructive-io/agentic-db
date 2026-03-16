-- Revert: schemas/agent_db_app_public/tables/chunks/columns/entity_id/column


ALTER TABLE "agent_db_app_public".chunks 
  DROP COLUMN entity_id RESTRICT;


