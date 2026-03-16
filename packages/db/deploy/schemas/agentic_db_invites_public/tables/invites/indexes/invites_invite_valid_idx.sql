-- Deploy: schemas/agentic_db_invites_public/tables/invites/indexes/invites_invite_valid_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/invite_valid/column


CREATE INDEX invites_invite_valid_idx ON "agentic_db_invites_public".invites USING BTREE ( invite_valid );

