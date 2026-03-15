-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_images/columns/event_id/alterations/alt0000002605


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_images 
  ALTER COLUMN event_id DROP NOT NULL;


