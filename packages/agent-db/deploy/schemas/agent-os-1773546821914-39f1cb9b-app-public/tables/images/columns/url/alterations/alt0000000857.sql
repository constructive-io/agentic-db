-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/url/alterations/alt0000000857
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/url/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/updated_at/alterations/alt0000000856


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".images 
  ALTER COLUMN url SET NOT NULL;

