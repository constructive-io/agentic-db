-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/parent_thread_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/status/alterations/alt0000001181


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  ADD COLUMN parent_thread_id uuid;

