-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limit_defaults/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".org_limit_defaults 
  DROP COLUMN id RESTRICT;


