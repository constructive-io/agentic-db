-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_levels/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_levels 
  DROP COLUMN created_at RESTRICT;


