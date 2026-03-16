-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/alterations/alt0000001579
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/column


COMMENT ON COLUMN "agent_db_user_identifiers_public".phone_numbers.is_verified IS 'Whether the phone number has been verified via SMS code';

