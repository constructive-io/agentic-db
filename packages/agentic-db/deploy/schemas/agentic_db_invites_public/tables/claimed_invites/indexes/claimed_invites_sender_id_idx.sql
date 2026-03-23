-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/indexes/claimed_invites_sender_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/table
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/columns/sender_id/column


CREATE INDEX claimed_invites_sender_id_idx ON agentic_db_invites_public.claimed_invites USING BTREE ( sender_id );

