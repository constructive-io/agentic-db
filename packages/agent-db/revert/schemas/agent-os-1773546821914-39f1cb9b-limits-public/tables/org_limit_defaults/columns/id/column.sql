-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limit_defaults/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".org_limit_defaults 
  DROP COLUMN id RESTRICT;


