-- Revert: schemas/agent_db_app_public/tables/list_items/columns/entity_id/alterations/alt0000004697


ALTER TABLE "agent_db_app_public".list_items 
  ALTER COLUMN entity_id DROP NOT NULL;


