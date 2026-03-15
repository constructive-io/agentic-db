-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/cc/alterations/alt0000003892
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/cc/column


COMMENT ON COLUMN "agent_db_user_identifiers_public".phone_numbers.cc IS E'Country calling code (e.g. +1, +44)';

