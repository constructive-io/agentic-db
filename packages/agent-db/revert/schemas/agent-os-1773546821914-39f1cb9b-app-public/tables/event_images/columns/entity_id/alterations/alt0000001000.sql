-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/columns/entity_id/alterations/alt0000001000


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_images 
  ALTER COLUMN entity_id DROP NOT NULL;


