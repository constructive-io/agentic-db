-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/constraints/activity_logs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  ADD CONSTRAINT activity_logs_pkey PRIMARY KEY (id);

