-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/indexes/org_invites_sender_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/sender_id/column


CREATE INDEX org_invites_sender_id_idx ON "agent-os-1773546821914-39f1cb9b-invites-public".org_invites USING BTREE ( sender_id );

