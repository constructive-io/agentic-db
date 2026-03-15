-- Revert: schemas/agent_db_app_public/tables/files/columns/entity_id/column


ALTER TABLE "agent_db_app_public".files 
  DROP COLUMN entity_id RESTRICT;


