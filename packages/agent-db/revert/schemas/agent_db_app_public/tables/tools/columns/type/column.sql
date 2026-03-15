-- Revert: schemas/agent_db_app_public/tables/tools/columns/type/column


ALTER TABLE agent_db_app_public.tools 
  DROP COLUMN type RESTRICT;


