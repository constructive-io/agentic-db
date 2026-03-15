-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_achievements 
  DROP COLUMN created_at RESTRICT;


