-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/count/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_steps 
  DROP COLUMN count RESTRICT;


