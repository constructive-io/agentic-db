-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/name/alterations/alt0000001327


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".milestones 
  ALTER COLUMN name DROP NOT NULL;


