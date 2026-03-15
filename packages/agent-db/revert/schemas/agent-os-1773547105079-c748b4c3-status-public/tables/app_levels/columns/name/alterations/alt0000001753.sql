-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/columns/name/alterations/alt0000001753


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_levels 
  ALTER COLUMN name DROP NOT NULL;


