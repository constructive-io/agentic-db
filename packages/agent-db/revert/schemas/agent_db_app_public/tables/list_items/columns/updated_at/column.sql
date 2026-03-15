-- Revert: schemas/agent_db_app_public/tables/list_items/columns/updated_at/column


ALTER TABLE agent_db_app_public.list_items 
  DROP COLUMN updated_at RESTRICT;


