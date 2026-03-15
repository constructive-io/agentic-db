-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/body_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/subject/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  ADD COLUMN body_text text;

