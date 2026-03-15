-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/columns/filename/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/columns/url/alterations/alt0000002555


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".attachments 
  ADD COLUMN filename text;

