-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_images/columns/image_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_images 
  DROP COLUMN image_id RESTRICT;


