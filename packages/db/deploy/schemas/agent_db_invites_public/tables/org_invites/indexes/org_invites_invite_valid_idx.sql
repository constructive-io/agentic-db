-- Deploy: schemas/agent_db_invites_public/tables/org_invites/indexes/org_invites_invite_valid_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/invite_valid/column


CREATE INDEX org_invites_invite_valid_idx ON "agent_db_invites_public".org_invites USING BTREE ( invite_valid );

