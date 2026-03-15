-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/number/alterations/alt0000002428
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/number/column


COMMENT ON COLUMN "agent_db_user_identifiers_public".phone_numbers.number IS 'The phone number without country code';

