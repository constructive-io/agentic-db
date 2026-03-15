-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/contact_id/alterations/alt0000002534


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  ALTER COLUMN contact_id DROP NOT NULL;


