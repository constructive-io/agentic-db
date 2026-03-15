-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/start_line/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/content/alterations/alt0000001361


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chunks 
  ADD COLUMN start_line int;

