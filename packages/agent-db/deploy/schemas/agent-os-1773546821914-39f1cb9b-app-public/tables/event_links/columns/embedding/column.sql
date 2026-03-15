-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/url/alterations/alt0000000973


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_links 
  ADD COLUMN embedding vector(768);

