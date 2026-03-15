-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_levels/columns/description/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_levels 
  DROP COLUMN description RESTRICT;


