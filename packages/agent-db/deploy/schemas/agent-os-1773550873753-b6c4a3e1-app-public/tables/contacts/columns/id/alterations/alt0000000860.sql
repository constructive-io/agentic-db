-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/columns/id/alterations/alt0000000860
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/embedding/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contacts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

