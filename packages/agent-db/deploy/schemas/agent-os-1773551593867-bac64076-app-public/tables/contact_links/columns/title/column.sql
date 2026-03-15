-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_links/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_links/columns/updated_at/alterations/alt0000002563


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_links 
  ADD COLUMN title text;

