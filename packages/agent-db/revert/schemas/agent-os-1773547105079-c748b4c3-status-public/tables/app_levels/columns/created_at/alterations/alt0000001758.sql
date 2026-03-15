-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/columns/created_at/alterations/alt0000001758


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_levels 
  ALTER COLUMN created_at DROP DEFAULT;


