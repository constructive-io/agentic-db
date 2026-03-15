-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/is_verified/alterations/alt0000002413
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/is_verified/column


COMMENT ON COLUMN "agent_db_user_identifiers_public".emails.is_verified IS 'Whether the email address has been verified via confirmation link';

