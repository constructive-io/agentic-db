-- Revert: schemas/agent_db_app_public/tables/list_items/columns/entity_id/column


ALTER TABLE "agent_db_app_public".list_items 
  DROP COLUMN entity_id RESTRICT;


