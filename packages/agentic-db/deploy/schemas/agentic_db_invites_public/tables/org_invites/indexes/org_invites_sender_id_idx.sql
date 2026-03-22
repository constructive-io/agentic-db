-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/indexes/org_invites_sender_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/sender_id/column


CREATE INDEX org_invites_sender_id_idx ON "agentic_db_invites_public".org_invites USING BTREE ( sender_id );

