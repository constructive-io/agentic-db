-- Deploy: schemas/agentic_db_invites_public/tables/invites/indexes/invites_sender_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/sender_id/column


CREATE INDEX invites_sender_id_idx ON agentic_db_invites_public.invites USING BTREE ( sender_id );

