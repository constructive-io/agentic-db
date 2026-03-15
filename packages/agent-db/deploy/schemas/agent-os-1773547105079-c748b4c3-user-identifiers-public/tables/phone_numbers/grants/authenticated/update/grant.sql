-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/table


GRANT UPDATE (cc, number, owner_id, is_primary) ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".phone_numbers TO authenticated;

