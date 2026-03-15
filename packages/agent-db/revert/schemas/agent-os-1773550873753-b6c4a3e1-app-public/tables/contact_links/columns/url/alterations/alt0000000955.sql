-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/columns/url/alterations/alt0000000955


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_links 
  ALTER COLUMN url DROP NOT NULL;


