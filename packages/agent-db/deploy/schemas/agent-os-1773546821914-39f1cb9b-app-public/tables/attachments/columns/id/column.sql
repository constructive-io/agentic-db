-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/usage_count/alterations/alt0000000937


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".attachments 
  ADD COLUMN id uuid;

