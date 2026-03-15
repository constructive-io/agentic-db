-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/contact_id/alterations/alt0000001007
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/contact_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/constraints/interactions_contact_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_links 
  ALTER COLUMN contact_id SET NOT NULL;

