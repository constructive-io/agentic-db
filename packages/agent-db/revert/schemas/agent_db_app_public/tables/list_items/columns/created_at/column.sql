-- Revert: schemas/agent_db_app_public/tables/list_items/columns/created_at/column


ALTER TABLE "agent_db_app_public".list_items 
  DROP COLUMN created_at RESTRICT;


