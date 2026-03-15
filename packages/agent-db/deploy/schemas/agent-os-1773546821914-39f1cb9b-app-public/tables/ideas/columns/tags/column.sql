-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/ideas/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/ideas/columns/status/alterations/alt0000001482


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".ideas 
  ADD COLUMN tags citext[];

