-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/exit_code/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/status/alterations/alt0000001199


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".processes 
  ADD COLUMN exit_code int;

