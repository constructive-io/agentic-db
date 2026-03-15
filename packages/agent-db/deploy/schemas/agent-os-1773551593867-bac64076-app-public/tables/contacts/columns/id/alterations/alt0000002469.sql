-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/id/alterations/alt0000002469
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/embedding/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

