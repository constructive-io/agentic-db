-- Revert: schemas/agent_db_app_public/tables/tools/constraints/tools_pkey/constraint


ALTER TABLE agent_db_app_public.tools 
  DROP CONSTRAINT tools_pkey;


