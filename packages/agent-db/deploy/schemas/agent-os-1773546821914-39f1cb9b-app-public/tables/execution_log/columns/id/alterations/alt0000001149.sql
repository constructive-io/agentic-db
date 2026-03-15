-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/id/alterations/alt0000001149
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
  ALTER COLUMN id SET NOT NULL;

