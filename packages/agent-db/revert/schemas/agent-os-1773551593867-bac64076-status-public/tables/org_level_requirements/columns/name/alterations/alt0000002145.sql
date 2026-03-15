-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/name/alterations/alt0000002145


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_level_requirements 
  ALTER COLUMN name DROP NOT NULL;


