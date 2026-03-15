-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/indexes/emails_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/columns/updated_at/column


CREATE INDEX emails_updated_at_idx ON agent_db_user_identifiers_public.emails ( updated_at );

