-- Deploy: schemas/agent_db_invites_public/tables/invites/indexes/invites_expires_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/expires_at/column


CREATE INDEX invites_expires_at_idx ON "agent_db_invites_public".invites USING BTREE ( expires_at );

