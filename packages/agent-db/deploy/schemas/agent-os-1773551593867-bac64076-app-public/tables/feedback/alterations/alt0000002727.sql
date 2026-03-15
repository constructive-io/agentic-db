-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/alterations/alt0000002727
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/error/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  DISABLE ROW LEVEL SECURITY;

