-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/indexes/claimed_invites_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/table
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/columns/created_at/column


CREATE INDEX claimed_invites_created_at_idx ON "agentic_db_invites_public".claimed_invites ( created_at );

