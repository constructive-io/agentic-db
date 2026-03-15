-- Revert: schemas/agent_db_app_public/tables/images/columns/entity_id/column


ALTER TABLE "agent_db_app_public".images 
  DROP COLUMN entity_id RESTRICT;


