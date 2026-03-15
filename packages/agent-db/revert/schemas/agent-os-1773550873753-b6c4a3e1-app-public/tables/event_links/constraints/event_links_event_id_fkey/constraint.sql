-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/constraints/event_links_event_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_links 
  DROP CONSTRAINT event_links_event_id_fkey;


