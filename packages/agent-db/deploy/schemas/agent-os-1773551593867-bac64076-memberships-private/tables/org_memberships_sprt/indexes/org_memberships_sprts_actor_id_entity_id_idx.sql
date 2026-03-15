-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/indexes/org_memberships_sprts_actor_id_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/actor_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/permissions/column


CREATE UNIQUE INDEX org_memberships_sprts_actor_id_entity_id_idx ON "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt USING BTREE ( actor_id, entity_id ) INCLUDE ( permissions );

