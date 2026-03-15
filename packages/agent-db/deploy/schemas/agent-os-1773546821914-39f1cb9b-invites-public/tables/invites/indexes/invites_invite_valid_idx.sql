-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/indexes/invites_invite_valid_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_valid/column


CREATE INDEX invites_invite_valid_idx ON "agent-os-1773546821914-39f1cb9b-invites-public".invites USING BTREE ( invite_valid );

