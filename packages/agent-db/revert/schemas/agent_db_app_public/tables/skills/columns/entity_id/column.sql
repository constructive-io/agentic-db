-- Revert: schemas/agent_db_app_public/tables/skills/columns/entity_id/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN entity_id RESTRICT;


