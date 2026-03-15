-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_images/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_images 
  DROP COLUMN id RESTRICT;


