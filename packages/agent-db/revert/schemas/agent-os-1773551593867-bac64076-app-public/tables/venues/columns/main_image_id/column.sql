-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
  DROP COLUMN main_image_id RESTRICT;


