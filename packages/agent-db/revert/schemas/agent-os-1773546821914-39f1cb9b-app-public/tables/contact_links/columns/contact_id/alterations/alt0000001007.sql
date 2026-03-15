-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/contact_id/alterations/alt0000001007


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_links 
  ALTER COLUMN contact_id DROP NOT NULL;


