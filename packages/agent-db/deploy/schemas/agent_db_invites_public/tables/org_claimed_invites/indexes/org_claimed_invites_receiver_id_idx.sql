-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/indexes/org_claimed_invites_receiver_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/receiver_id/column


CREATE INDEX org_claimed_invites_receiver_id_idx ON "agent_db_invites_public".org_claimed_invites USING BTREE ( receiver_id );

