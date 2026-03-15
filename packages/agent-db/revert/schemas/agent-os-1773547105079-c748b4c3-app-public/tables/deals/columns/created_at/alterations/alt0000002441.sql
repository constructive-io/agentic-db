-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/created_at/alterations/alt0000002441


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deals 
  ALTER COLUMN created_at DROP NOT NULL;


