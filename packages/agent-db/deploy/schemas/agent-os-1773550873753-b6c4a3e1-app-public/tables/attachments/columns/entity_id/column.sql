-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/attachments/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/columns/usage_count/alterations/alt0000000937


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".attachments 
  ADD COLUMN entity_id uuid;

