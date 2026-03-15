-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_steps/constraints/app_steps_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_steps 
  DROP CONSTRAINT app_steps_actor_id_fkey;


