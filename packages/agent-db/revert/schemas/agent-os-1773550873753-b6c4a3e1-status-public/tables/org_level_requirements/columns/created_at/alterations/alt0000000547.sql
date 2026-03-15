-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_level_requirements/columns/created_at/alterations/alt0000000547


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_level_requirements 
  ALTER COLUMN created_at DROP DEFAULT;


