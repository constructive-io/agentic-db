-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/name/alterations/alt0000002642


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skills 
  ALTER COLUMN name DROP NOT NULL;


