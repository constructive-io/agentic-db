-- Revert: schemas/agent_db_app_public/tables/tools/columns/name/column


ALTER TABLE agent_db_app_public.tools 
  DROP COLUMN name RESTRICT;


