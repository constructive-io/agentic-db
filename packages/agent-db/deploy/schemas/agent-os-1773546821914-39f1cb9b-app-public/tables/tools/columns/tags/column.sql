-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/is_active/alterations/alt0000001223


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
  ADD COLUMN tags citext[];

