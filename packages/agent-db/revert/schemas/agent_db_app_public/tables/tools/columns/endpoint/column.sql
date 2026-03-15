-- Revert: schemas/agent_db_app_public/tables/tools/columns/endpoint/column


ALTER TABLE agent_db_app_public.tools 
  DROP COLUMN endpoint RESTRICT;


