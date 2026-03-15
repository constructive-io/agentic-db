-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_levels/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_levels 
  DROP COLUMN name RESTRICT;


