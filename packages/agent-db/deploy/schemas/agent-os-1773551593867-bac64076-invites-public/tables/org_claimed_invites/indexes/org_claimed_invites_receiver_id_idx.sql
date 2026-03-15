-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/indexes/org_claimed_invites_receiver_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_claimed_invites/columns/receiver_id/column


CREATE INDEX org_claimed_invites_receiver_id_idx ON "agent-os-1773551593867-bac64076-invites-public".org_claimed_invites USING BTREE ( receiver_id );

