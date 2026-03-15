-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/activity_log/constraints/activity_logs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".activity_log 
  ADD CONSTRAINT activity_logs_pkey PRIMARY KEY (id);

