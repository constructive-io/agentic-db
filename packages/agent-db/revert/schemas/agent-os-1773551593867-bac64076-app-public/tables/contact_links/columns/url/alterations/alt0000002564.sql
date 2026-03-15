-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_links/columns/url/alterations/alt0000002564


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_links 
  ALTER COLUMN url DROP NOT NULL;


