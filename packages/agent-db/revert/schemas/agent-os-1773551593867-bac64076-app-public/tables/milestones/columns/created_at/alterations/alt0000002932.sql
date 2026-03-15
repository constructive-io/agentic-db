-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/created_at/alterations/alt0000002932


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".milestones 
  ALTER COLUMN created_at DROP NOT NULL;


