-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_levels/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_levels 
  DROP COLUMN created_at RESTRICT;


