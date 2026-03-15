-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/indexes/org_claimed_invites_sender_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/sender_id/column


CREATE INDEX org_claimed_invites_sender_id_idx ON agent_db_invites_public.org_claimed_invites USING BTREE ( sender_id );

