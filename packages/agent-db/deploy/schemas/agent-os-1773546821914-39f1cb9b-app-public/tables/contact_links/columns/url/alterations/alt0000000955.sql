-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/url/alterations/alt0000000955
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/url/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/title/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_links 
  ALTER COLUMN url SET NOT NULL;

