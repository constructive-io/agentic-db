-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/contact_id/alterations/alt0000002486


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".interactions 
  ALTER COLUMN contact_id DROP NOT NULL;


