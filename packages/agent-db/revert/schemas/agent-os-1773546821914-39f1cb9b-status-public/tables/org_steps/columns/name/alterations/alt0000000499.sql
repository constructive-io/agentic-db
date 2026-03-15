-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/columns/name/alterations/alt0000000499


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_steps 
  ALTER COLUMN name DROP NOT NULL;


