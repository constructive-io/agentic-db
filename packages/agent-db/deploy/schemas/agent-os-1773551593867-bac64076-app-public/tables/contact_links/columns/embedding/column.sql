-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_links/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_links/columns/url/alterations/alt0000002564


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_links 
  ADD COLUMN embedding vector(768);

