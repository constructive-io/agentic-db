-- Revert: schemas/agent_db_app_public/tables/deals/columns/entity_id/column


ALTER TABLE "agent_db_app_public".deals 
  DROP COLUMN entity_id RESTRICT;


