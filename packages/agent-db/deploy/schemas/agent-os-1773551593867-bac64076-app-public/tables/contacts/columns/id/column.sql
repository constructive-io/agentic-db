-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  ADD COLUMN id uuid;

