-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/columns/parent_thread_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".threads 
  ADD COLUMN embedding_text text;

