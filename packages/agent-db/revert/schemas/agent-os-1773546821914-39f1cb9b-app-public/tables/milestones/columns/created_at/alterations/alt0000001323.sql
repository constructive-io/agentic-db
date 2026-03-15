-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/created_at/alterations/alt0000001323


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".milestones 
  ALTER COLUMN created_at DROP NOT NULL;


