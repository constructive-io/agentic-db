-- Revert: schemas/agent_db_app_public/tables/list_items/columns/list_id/alterations/alt0000001532


ALTER TABLE agent_db_app_public.list_items 
  ALTER COLUMN list_id DROP NOT NULL;


