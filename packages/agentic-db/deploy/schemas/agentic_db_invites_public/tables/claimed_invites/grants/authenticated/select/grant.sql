-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/table


GRANT SELECT ON "agentic_db_invites_public".claimed_invites TO authenticated;

