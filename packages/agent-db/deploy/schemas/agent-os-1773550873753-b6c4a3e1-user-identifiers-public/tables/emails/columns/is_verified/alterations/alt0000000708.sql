-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/columns/is_verified/alterations/alt0000000708
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/columns/is_verified/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails 
    ALTER COLUMN is_verified SET DEFAULT false;

