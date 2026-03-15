-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/updated_at/alterations/alt0000002640


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skills 
  ALTER COLUMN updated_at DROP NOT NULL;


