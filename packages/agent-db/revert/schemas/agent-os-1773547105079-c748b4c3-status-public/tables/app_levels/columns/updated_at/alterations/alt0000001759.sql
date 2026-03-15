-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/columns/updated_at/alterations/alt0000001759


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_levels 
  ALTER COLUMN updated_at DROP DEFAULT;


