-- Revert: schemas/agent_db_app_public/tables/threads/columns/entity_id/column


ALTER TABLE "agent_db_app_public".threads 
  DROP COLUMN entity_id RESTRICT;


