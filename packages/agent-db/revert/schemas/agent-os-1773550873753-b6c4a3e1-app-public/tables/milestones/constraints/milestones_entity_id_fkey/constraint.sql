-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/constraints/milestones_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".milestones 
  DROP CONSTRAINT milestones_entity_id_fkey;


