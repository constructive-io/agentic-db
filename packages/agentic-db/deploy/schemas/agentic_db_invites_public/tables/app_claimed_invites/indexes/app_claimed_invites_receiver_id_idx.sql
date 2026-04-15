-- Deploy: schemas/agentic_db_invites_public/tables/app_claimed_invites/indexes/app_claimed_invites_receiver_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/app_claimed_invites/table
-- requires: schemas/agentic_db_invites_public/tables/app_claimed_invites/columns/receiver_id/column


CREATE INDEX app_claimed_invites_receiver_id_idx ON agentic_db_invites_public.app_claimed_invites USING BTREE ( receiver_id );

