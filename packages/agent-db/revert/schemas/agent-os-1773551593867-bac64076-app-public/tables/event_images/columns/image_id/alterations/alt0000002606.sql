-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_images/columns/image_id/alterations/alt0000002606


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_images 
  ALTER COLUMN image_id DROP NOT NULL;


