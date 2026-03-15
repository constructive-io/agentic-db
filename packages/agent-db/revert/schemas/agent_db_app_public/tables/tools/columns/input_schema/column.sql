-- Revert: schemas/agent_db_app_public/tables/tools/columns/input_schema/column


ALTER TABLE agent_db_app_public.tools 
  DROP COLUMN input_schema RESTRICT;


