-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chunks/columns/file_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chunks/columns/updated_at/alterations/alt0000001360


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chunks 
  ADD COLUMN file_id uuid;

