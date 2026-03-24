-- Revert: schemas/agentic_db_limits_public/tables/app_limits/constraints/app_limits_actor_id_fkey/constraint


ALTER TABLE agentic_db_limits_public.app_limits 
  DROP CONSTRAINT app_limits_actor_id_fkey;


