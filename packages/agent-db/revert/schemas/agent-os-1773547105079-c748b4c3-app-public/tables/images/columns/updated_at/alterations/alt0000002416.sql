-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/columns/updated_at/alterations/alt0000002416


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".images 
  ALTER COLUMN updated_at DROP NOT NULL;


