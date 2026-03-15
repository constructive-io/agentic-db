-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/priority/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/status/alterations/alt0000002659


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  ADD COLUMN priority int;

