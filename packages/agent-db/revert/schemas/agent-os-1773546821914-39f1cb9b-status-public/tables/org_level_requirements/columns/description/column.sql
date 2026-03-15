-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/columns/description/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_level_requirements 
  DROP COLUMN description RESTRICT;


