-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/columns/updated_at/alterations/alt0000000548


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_level_requirements 
  ALTER COLUMN updated_at DROP DEFAULT;


