-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/constraints/event_links_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_links 
  DROP CONSTRAINT event_links_entity_id_fkey;


