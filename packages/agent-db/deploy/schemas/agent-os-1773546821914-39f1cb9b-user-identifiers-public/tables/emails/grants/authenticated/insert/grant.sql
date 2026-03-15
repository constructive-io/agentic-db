-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/table


GRANT INSERT (email, owner_id, is_primary) ON "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails TO authenticated;

