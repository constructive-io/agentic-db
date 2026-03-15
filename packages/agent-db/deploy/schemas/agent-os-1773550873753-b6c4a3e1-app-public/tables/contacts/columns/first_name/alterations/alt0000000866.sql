-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/columns/first_name/alterations/alt0000000866
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/columns/first_name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/columns/updated_at/alterations/alt0000000865


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contacts 
  ALTER COLUMN first_name SET NOT NULL;

