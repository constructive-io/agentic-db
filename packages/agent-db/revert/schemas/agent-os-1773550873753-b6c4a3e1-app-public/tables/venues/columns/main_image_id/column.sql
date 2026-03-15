-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venues 
  DROP COLUMN main_image_id RESTRICT;


