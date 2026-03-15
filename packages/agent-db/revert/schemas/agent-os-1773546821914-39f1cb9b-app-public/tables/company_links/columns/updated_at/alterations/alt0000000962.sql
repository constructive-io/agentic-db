-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/columns/updated_at/alterations/alt0000000962


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_links 
  ALTER COLUMN updated_at DROP NOT NULL;


