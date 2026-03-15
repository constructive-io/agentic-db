-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/logs_path/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/exit_code/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".processes 
  ADD COLUMN logs_path text;

