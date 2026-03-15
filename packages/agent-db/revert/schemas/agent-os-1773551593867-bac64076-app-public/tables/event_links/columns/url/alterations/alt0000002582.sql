-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/columns/url/alterations/alt0000002582


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_links 
  ALTER COLUMN url DROP NOT NULL;


