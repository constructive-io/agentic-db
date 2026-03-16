-- Revert: schemas/agent_db_app_public/tables/projects/columns/entity_id/column


ALTER TABLE "agent_db_app_public".projects 
  DROP COLUMN entity_id RESTRICT;


