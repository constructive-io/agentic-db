-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/name/alterations/alt0000000895
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/updated_at/alterations/alt0000000894


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".events 
  ALTER COLUMN name SET NOT NULL;

