-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/constraints/milestones_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".milestones 
  DROP CONSTRAINT milestones_entity_id_fkey;


