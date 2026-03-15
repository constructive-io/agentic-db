-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_steps 
  DROP COLUMN updated_at RESTRICT;


