-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table


GRANT INSERT (email, owner_id, is_primary) ON agent_db_user_identifiers_public.emails TO authenticated;

