-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venues 
  DROP COLUMN main_image_id RESTRICT;


