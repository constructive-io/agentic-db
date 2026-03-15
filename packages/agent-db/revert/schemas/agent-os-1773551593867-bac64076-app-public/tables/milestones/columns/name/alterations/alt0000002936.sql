-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/name/alterations/alt0000002936


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".milestones 
  ALTER COLUMN name DROP NOT NULL;


