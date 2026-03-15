-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_level_requirements/columns/level/alterations/alt0000000538


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_level_requirements 
  ALTER COLUMN level DROP NOT NULL;


