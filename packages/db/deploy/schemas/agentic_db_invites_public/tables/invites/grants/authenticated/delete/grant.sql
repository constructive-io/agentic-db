-- Deploy: schemas/agentic_db_invites_public/tables/invites/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table


GRANT DELETE ON "agentic_db_invites_public".invites TO authenticated;

