-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/updated_at/alterations/alt0000002495


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tags 
  ALTER COLUMN updated_at DROP NOT NULL;


