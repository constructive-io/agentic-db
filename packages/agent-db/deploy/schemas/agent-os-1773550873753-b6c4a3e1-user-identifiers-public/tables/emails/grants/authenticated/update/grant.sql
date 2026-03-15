-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/table


GRANT UPDATE (email, owner_id, is_primary) ON "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails TO authenticated;

