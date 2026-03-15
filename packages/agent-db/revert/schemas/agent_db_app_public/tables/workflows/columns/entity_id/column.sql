-- Revert: schemas/agent_db_app_public/tables/workflows/columns/entity_id/column


ALTER TABLE "agent_db_app_public".workflows 
  DROP COLUMN entity_id RESTRICT;


