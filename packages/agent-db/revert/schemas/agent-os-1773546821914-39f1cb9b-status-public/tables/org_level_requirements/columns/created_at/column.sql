-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_level_requirements 
  DROP COLUMN created_at RESTRICT;


