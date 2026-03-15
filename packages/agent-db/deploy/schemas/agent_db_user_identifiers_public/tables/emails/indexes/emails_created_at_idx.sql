-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/indexes/emails_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/created_at/column


CREATE INDEX emails_created_at_idx ON "agent_db_user_identifiers_public".emails ( created_at );

