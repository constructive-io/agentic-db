-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  ADD COLUMN embedding_text text;

