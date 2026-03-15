-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/columns/entity_id/alterations/alt0000002577


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_links 
  ALTER COLUMN entity_id DROP NOT NULL;


