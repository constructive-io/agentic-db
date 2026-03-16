-- Revert: schemas/agent_db_app_public/tables/sessions/columns/entity_id/column


ALTER TABLE "agent_db_app_public".sessions 
  DROP COLUMN entity_id RESTRICT;


