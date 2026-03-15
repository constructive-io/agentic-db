-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_images/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_images 
  DROP COLUMN id RESTRICT;


