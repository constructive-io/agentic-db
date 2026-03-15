-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/description/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_level_requirements 
  DROP COLUMN description RESTRICT;


