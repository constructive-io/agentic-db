-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_images/constraints/company_images_image_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_images 
  DROP CONSTRAINT company_images_image_id_fkey;


