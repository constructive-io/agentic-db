-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/constraints/org_steps_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_steps 
  DROP CONSTRAINT org_steps_actor_id_fkey;


