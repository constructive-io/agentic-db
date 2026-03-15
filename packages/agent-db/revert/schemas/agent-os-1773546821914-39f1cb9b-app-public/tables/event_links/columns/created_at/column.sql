-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_links 
  DROP COLUMN created_at RESTRICT;


