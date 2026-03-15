-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/entity_id/alterations/alt0000002931


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".milestones 
  ALTER COLUMN entity_id DROP NOT NULL;


