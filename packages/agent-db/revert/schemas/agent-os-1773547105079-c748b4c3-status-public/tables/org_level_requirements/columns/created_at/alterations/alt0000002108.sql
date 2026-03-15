-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/columns/created_at/alterations/alt0000002108


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_level_requirements 
  ALTER COLUMN created_at DROP DEFAULT;


