-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limits/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".org_limits 
  DROP COLUMN name RESTRICT;


