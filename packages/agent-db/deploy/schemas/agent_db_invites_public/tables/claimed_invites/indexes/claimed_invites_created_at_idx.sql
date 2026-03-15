-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/indexes/claimed_invites_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/table
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/columns/created_at/column


CREATE INDEX claimed_invites_created_at_idx ON "agent_db_invites_public".claimed_invites ( created_at );

