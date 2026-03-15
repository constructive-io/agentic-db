-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/status/alterations/alt0000001181
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/status/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/summary/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
    ALTER COLUMN status SET DEFAULT 'open';

