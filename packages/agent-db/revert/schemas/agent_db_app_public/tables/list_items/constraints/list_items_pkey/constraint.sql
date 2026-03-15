-- Revert: schemas/agent_db_app_public/tables/list_items/constraints/list_items_pkey/constraint


ALTER TABLE "agent_db_app_public".list_items 
  DROP CONSTRAINT list_items_pkey;


