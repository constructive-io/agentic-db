-- Revert: schemas/agent_db_app_public/tables/list_items/constraints/list_items_list_id_fkey/constraint


ALTER TABLE agent_db_app_public.list_items 
  DROP CONSTRAINT list_items_list_id_fkey;


