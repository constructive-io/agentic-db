-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/columns/mime_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/columns/filename/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".attachments 
  ADD COLUMN mime_type text;

