-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/columns/priority/alterations/alt0000000544


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_level_requirements 
  ALTER COLUMN priority DROP NOT NULL;


