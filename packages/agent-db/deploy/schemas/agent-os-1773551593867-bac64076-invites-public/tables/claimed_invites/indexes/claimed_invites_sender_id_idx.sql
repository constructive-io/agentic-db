-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/indexes/claimed_invites_sender_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/columns/sender_id/column


CREATE INDEX claimed_invites_sender_id_idx ON "agent-os-1773551593867-bac64076-invites-public".claimed_invites USING BTREE ( sender_id );

