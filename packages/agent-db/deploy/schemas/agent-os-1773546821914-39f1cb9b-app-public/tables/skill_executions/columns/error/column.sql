-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/error/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/output/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skill_executions 
  ADD COLUMN error text;

