-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/columns/is_verified/alterations/alt0000002288
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/columns/is_verified/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-user-identifiers-public".phone_numbers.is_verified IS 'Whether the phone number has been verified via SMS code';

