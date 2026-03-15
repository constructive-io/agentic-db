-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/color/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/name/alterations/alt0000000936


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tags 
  ADD COLUMN color text;

