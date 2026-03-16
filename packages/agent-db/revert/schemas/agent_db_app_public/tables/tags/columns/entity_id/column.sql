-- Revert: schemas/agent_db_app_public/tables/tags/columns/entity_id/column


ALTER TABLE "agent_db_app_public".tags 
  DROP COLUMN entity_id RESTRICT;


