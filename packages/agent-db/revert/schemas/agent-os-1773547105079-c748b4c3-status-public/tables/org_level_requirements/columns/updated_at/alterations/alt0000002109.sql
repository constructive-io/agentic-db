-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/columns/updated_at/alterations/alt0000002109


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_level_requirements 
  ALTER COLUMN updated_at DROP DEFAULT;


