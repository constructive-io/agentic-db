-- Deploy: schemas/agent_db_invites_public/tables/org_invites/indexes/org_invites_sender_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/sender_id/column


CREATE INDEX org_invites_sender_id_idx ON agent_db_invites_public.org_invites USING BTREE ( sender_id );

