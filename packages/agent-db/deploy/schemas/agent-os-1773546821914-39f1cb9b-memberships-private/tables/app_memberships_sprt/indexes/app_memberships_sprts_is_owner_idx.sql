-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/indexes/app_memberships_sprts_is_owner_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/columns/is_owner/column


CREATE INDEX app_memberships_sprts_is_owner_idx ON "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt USING BTREE ( is_owner );

