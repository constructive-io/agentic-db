-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/columns/is_primary/alterations/alt0000003882
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/is_primary/column


COMMENT ON COLUMN "agent_db_user_identifiers_public".emails.is_primary IS E'Whether this is the user''s primary email address';

