-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/attachments/columns/url/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/attachments/columns/updated_at/alterations/alt0000000945


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".attachments 
  ADD COLUMN url text;

