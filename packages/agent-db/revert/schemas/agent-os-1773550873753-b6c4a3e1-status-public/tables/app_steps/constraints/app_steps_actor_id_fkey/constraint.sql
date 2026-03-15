-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/constraints/app_steps_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_steps 
  DROP CONSTRAINT app_steps_actor_id_fkey;


