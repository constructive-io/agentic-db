-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_steps 
  DROP COLUMN entity_id RESTRICT;


