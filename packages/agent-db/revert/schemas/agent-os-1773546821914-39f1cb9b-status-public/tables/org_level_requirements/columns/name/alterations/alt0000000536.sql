-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/columns/name/alterations/alt0000000536


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_level_requirements 
  ALTER COLUMN name DROP NOT NULL;


