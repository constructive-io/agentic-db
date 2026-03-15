-- Revert: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limit_defaults/columns/max/column


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".org_limit_defaults 
  DROP COLUMN max RESTRICT;


