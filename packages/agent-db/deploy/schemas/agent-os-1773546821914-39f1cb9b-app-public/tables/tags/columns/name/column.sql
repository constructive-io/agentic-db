-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/updated_at/alterations/alt0000000935


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tags 
  ADD COLUMN name text;

