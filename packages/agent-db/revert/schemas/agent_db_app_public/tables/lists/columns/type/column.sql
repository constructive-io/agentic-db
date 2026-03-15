-- Revert: schemas/agent_db_app_public/tables/lists/columns/type/column


ALTER TABLE agent_db_app_public.lists 
  DROP COLUMN type RESTRICT;


