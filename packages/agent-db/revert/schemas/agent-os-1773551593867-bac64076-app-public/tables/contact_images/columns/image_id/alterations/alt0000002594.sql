-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_images/columns/image_id/alterations/alt0000002594


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_images 
  ALTER COLUMN image_id DROP NOT NULL;


