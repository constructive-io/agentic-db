-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/pid/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/updated_at/alterations/alt0000001198


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".processes 
  ADD COLUMN pid int;

