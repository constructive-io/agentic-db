-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/name/alterations/alt0000001222


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
  ADD COLUMN description text;

