-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/title/alterations/alt0000001060
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/title/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/updated_at/alterations/alt0000001059


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".rules 
  ALTER COLUMN title SET NOT NULL;

