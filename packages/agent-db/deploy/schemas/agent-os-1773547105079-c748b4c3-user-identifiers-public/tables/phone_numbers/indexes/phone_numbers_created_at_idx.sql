-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/indexes/phone_numbers_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/columns/created_at/column


CREATE INDEX phone_numbers_created_at_idx ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".phone_numbers ( created_at );

