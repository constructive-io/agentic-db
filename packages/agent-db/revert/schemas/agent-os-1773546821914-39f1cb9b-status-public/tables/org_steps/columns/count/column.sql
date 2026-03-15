-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/columns/count/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_steps 
  DROP COLUMN count RESTRICT;


