-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/columns/company_id/alterations/alt0000000990


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_images 
  ALTER COLUMN company_id DROP NOT NULL;


