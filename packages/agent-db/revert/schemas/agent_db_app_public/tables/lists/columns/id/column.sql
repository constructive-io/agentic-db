-- Revert: schemas/agent_db_app_public/tables/lists/columns/id/column


ALTER TABLE agent_db_app_public.lists 
  DROP COLUMN id RESTRICT;


