-- Deploy: schemas/agentic_db_invites_public/tables/org_claimed_invites/indexes/org_claimed_invites_sender_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_claimed_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_invites_public/tables/org_claimed_invites/columns/sender_id/column


CREATE INDEX org_claimed_invites_sender_id_idx ON agentic_db_invites_public.org_claimed_invites USING BTREE ( sender_id );

