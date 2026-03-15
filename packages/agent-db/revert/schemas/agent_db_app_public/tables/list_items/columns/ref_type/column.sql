-- Revert: schemas/agent_db_app_public/tables/list_items/columns/ref_type/column


ALTER TABLE agent_db_app_public.list_items 
  DROP COLUMN ref_type RESTRICT;


