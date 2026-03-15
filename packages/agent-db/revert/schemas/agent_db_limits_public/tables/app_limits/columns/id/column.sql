-- Revert: schemas/agent_db_limits_public/tables/app_limits/columns/id/column


ALTER TABLE agent_db_limits_public.app_limits 
  DROP COLUMN id RESTRICT;


