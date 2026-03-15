-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/id/alterations/alt0000001292
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/embedding/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

