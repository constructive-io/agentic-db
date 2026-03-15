-- Revert: schemas/agent_db_app_public/tables/lists/columns/name/column


ALTER TABLE agent_db_app_public.lists 
  DROP COLUMN name RESTRICT;


