-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/ideas/alterations/alt0000001473
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".ideas 
  DISABLE ROW LEVEL SECURITY;

