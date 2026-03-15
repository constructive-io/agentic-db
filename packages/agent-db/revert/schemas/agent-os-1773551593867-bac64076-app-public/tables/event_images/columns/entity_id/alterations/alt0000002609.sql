-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_images/columns/entity_id/alterations/alt0000002609


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_images 
  ALTER COLUMN entity_id DROP NOT NULL;


