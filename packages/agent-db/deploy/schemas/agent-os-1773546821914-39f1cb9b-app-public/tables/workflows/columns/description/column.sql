-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/name/alterations/alt0000001232


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
  ADD COLUMN description text;

