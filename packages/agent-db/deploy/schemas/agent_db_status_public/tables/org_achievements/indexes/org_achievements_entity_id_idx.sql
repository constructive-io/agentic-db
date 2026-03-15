-- Deploy: schemas/agent_db_status_public/tables/org_achievements/indexes/org_achievements_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table
-- requires: schemas/agent_db_status_public/tables/org_achievements/columns/entity_id/column


CREATE INDEX org_achievements_entity_id_idx ON "agent_db_status_public".org_achievements USING BTREE ( entity_id );

