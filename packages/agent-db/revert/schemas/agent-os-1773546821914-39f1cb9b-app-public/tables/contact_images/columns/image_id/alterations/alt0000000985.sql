-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_images/columns/image_id/alterations/alt0000000985


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_images 
  ALTER COLUMN image_id DROP NOT NULL;


