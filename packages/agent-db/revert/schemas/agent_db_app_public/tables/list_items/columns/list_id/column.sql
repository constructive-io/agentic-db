-- Revert: schemas/agent_db_app_public/tables/list_items/columns/list_id/column


ALTER TABLE "agent_db_app_public".list_items 
  DROP COLUMN list_id RESTRICT;


