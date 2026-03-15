-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/indexes/org_achievements_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/columns/entity_id/column


CREATE INDEX org_achievements_entity_id_idx ON "agent-os-1773551593867-bac64076-status-public".org_achievements USING BTREE ( entity_id );

