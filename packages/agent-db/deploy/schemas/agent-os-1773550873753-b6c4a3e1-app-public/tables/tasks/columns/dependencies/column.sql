-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/dependencies/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/conversation_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tasks 
  ADD COLUMN dependencies uuid[];

