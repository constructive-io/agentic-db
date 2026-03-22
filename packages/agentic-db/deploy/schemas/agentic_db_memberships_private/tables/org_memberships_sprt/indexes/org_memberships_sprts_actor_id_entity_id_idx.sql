-- Deploy: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/indexes/org_memberships_sprts_actor_id_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/table
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/actor_id/column
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/entity_id/column
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/permissions/column


CREATE UNIQUE INDEX org_memberships_sprts_actor_id_entity_id_idx ON agentic_db_memberships_private.org_memberships_sprt USING BTREE ( actor_id, entity_id ) INCLUDE ( permissions );

