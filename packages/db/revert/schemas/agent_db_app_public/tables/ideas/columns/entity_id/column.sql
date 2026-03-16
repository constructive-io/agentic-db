-- Revert: schemas/agent_db_app_public/tables/ideas/columns/entity_id/column


ALTER TABLE "agent_db_app_public".ideas 
  DROP COLUMN entity_id RESTRICT;


