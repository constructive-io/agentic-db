-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/columns/name/alterations/alt0000000513


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_achievements 
  ALTER COLUMN name DROP NOT NULL;


