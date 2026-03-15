-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/constraints/venue_links_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_links 
  ADD CONSTRAINT venue_links_pkey PRIMARY KEY (id);

