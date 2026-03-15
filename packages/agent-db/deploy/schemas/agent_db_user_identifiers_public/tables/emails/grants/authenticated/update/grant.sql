-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table


GRANT UPDATE (email, owner_id, is_primary) ON agent_db_user_identifiers_public.emails TO authenticated;

