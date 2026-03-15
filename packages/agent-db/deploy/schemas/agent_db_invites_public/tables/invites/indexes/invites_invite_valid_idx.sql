-- Deploy: schemas/agent_db_invites_public/tables/invites/indexes/invites_invite_valid_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/invite_valid/column


CREATE INDEX invites_invite_valid_idx ON agent_db_invites_public.invites USING BTREE ( invite_valid );

