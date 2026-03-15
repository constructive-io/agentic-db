-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/columns/image_id/alterations/alt0000000991


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_images 
  ALTER COLUMN image_id DROP NOT NULL;


