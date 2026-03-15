-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/first_name/alterations/alt0000002475
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/first_name/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/updated_at/alterations/alt0000002474


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  ALTER COLUMN first_name SET NOT NULL;

