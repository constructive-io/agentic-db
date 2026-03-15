-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  ENABLE ROW LEVEL SECURITY;

