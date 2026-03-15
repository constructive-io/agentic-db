-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_level_requirements/columns/priority/alterations/alt0000000544


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_level_requirements 
  ALTER COLUMN priority DROP NOT NULL;


