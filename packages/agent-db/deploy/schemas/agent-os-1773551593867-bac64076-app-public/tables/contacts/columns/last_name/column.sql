-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/last_name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/first_name/alterations/alt0000002475


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  ADD COLUMN last_name text;

