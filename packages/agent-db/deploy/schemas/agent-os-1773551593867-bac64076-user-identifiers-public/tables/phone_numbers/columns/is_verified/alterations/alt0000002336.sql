-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/columns/is_verified/alterations/alt0000002336
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/columns/is_verified/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers.is_verified IS 'Whether the phone number has been verified via SMS code';

