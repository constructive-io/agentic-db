-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_links/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_links 
  DROP COLUMN embedding RESTRICT;


