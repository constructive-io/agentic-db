-- Revert: schemas/agent_db_app_public/tables/list_items/columns/id/alterations/alt0000004743


ALTER TABLE "agent_db_app_public".list_items 
  ALTER COLUMN id DROP NOT NULL;


