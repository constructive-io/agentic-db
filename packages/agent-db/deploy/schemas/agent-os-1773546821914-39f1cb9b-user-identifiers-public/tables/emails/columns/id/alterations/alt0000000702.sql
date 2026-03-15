-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/id/alterations/alt0000000702
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

