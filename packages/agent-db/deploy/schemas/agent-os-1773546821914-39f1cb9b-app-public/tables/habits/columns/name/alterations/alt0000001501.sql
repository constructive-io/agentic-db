-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/name/alterations/alt0000001501
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/updated_at/alterations/alt0000001500


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habits 
  ALTER COLUMN name SET NOT NULL;

