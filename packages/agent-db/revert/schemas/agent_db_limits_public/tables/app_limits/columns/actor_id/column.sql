-- Revert: schemas/agent_db_limits_public/tables/app_limits/columns/actor_id/column


ALTER TABLE agent_db_limits_public.app_limits 
  DROP COLUMN actor_id RESTRICT;


