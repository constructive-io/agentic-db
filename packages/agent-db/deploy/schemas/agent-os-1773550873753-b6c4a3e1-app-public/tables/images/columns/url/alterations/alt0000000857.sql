-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/url/alterations/alt0000000857
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/url/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/updated_at/alterations/alt0000000856


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".images 
  ALTER COLUMN url SET NOT NULL;

