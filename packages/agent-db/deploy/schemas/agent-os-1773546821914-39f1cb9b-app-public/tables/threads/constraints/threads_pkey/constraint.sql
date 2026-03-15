-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/constraints/threads_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  ADD CONSTRAINT threads_pkey PRIMARY KEY (id);

