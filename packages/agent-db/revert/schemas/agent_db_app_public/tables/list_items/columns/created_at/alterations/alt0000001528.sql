-- Revert: schemas/agent_db_app_public/tables/list_items/columns/created_at/alterations/alt0000001528


ALTER TABLE agent_db_app_public.list_items 
  ALTER COLUMN created_at DROP NOT NULL;


