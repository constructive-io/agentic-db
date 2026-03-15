-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_images/columns/image_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_images 
  DROP COLUMN image_id RESTRICT;


