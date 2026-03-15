-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/created_at/alterations/alt0000002156


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_level_requirements 
  ALTER COLUMN created_at DROP DEFAULT;


