-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_links 
  DROP COLUMN id RESTRICT;


