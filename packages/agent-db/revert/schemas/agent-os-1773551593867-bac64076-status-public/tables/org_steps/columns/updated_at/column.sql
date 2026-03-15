-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_steps 
  DROP COLUMN updated_at RESTRICT;


