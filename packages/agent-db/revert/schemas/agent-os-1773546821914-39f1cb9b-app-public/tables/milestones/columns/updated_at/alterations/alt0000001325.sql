-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/updated_at/alterations/alt0000001325


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".milestones 
  ALTER COLUMN updated_at DROP NOT NULL;


