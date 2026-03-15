-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/indexes/invites_sender_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/sender_id/column


CREATE INDEX invites_sender_id_idx ON "agent-os-1773551593867-bac64076-invites-public".invites USING BTREE ( sender_id );

