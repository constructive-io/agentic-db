-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/updated_at/alterations/alt0000000953


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_links 
  ALTER COLUMN updated_at DROP NOT NULL;


