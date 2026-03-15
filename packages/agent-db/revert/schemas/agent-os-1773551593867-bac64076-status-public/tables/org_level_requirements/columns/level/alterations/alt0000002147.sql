-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/level/alterations/alt0000002147


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_level_requirements 
  ALTER COLUMN level DROP NOT NULL;


