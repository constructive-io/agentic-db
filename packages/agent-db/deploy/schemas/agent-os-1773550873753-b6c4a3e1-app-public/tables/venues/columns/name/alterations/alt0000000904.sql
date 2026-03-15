-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/name/alterations/alt0000000904
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/updated_at/alterations/alt0000000903


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venues 
  ALTER COLUMN name SET NOT NULL;

