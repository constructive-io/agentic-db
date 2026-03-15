-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/priority/alterations/alt0000002153


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_level_requirements 
  ALTER COLUMN priority DROP NOT NULL;


