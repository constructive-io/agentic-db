-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/url/alterations/alt0000000955


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_links 
  ALTER COLUMN url DROP NOT NULL;


