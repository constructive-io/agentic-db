-- Revert: schemas/agent_db_status_public/tables/app_steps/constraints/app_steps_actor_id_fkey/constraint


ALTER TABLE agent_db_status_public.app_steps 
  DROP CONSTRAINT app_steps_actor_id_fkey;


