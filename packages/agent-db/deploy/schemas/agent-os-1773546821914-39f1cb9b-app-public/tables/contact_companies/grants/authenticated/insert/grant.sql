-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_companies/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_companies/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".contact_companies TO authenticated;

