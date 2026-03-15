-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/columns/entity_id/alterations/alt0000000959


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_links 
  ALTER COLUMN entity_id DROP NOT NULL;


