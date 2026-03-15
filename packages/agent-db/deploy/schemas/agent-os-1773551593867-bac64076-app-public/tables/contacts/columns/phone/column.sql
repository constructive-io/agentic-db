-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/phone/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/email/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  ADD COLUMN phone text;

