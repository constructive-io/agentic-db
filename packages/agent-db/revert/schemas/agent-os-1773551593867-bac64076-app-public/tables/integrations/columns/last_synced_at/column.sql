-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/last_synced_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
  DROP COLUMN last_synced_at RESTRICT;


