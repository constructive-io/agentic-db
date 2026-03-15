-- Revert: schemas/agent_db_limits_public/tables/app_limits/columns/name/column


ALTER TABLE agent_db_limits_public.app_limits 
  DROP COLUMN name RESTRICT;


