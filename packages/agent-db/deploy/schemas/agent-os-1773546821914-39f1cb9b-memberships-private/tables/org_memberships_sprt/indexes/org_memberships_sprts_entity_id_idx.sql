-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/indexes/org_memberships_sprts_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/is_admin/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/is_owner/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/permissions/column


CREATE INDEX org_memberships_sprts_entity_id_idx ON "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt USING BTREE ( entity_id ) INCLUDE ( permissions, is_owner, is_admin );

