-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/embedding_text/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".session_archives 
  ADD COLUMN embedding vector(768);

