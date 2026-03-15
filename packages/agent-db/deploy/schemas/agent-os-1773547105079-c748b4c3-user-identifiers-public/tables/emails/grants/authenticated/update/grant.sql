-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/table


GRANT UPDATE (email, owner_id, is_primary) ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails TO authenticated;

