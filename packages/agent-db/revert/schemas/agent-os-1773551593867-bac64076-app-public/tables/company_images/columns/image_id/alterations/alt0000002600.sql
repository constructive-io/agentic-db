-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_images/columns/image_id/alterations/alt0000002600


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_images 
  ALTER COLUMN image_id DROP NOT NULL;


