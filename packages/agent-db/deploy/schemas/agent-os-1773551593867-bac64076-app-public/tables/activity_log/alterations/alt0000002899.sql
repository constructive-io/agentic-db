-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/alterations/alt0000002899
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  DISABLE ROW LEVEL SECURITY;

