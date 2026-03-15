-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/columns/updated_at/alterations/alt0000000980
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/columns/updated_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venue_links/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venue_links 
  ALTER COLUMN updated_at SET NOT NULL;

