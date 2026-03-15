-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/name/alterations/alt0000001317
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/updated_at/alterations/alt0000001316


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".projects 
  ALTER COLUMN name SET NOT NULL;

