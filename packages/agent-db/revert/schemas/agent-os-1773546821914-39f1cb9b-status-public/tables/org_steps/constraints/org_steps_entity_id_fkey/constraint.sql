-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/constraints/org_steps_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_steps 
  DROP CONSTRAINT org_steps_entity_id_fkey;


