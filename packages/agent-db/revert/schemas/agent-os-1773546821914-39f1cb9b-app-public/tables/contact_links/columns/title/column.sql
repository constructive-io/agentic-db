-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/title/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_links 
  DROP COLUMN title RESTRICT;


