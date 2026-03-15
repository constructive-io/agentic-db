-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/id/alterations/alt0000001053
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".rules 
  ALTER COLUMN id SET NOT NULL;

