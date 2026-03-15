-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/url/alterations/alt0000000973


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_links 
  ALTER COLUMN url DROP NOT NULL;


