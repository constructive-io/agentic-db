-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/frequency/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/name/alterations/alt0000001501


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habits 
  ADD COLUMN frequency text;

