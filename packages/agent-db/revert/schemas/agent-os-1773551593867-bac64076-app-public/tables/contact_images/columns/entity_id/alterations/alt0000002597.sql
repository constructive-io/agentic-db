-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_images/columns/entity_id/alterations/alt0000002597


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_images 
  ALTER COLUMN entity_id DROP NOT NULL;


