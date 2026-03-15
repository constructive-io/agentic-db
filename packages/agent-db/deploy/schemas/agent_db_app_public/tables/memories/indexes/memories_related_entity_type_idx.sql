-- Deploy: schemas/agent_db_app_public/tables/memories/indexes/memories_related_entity_type_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/indexes/memories_agent_id_idx
-- requires: schemas/agent_db_app_public/tables/memories/columns/related_entity_type/column


CREATE INDEX memories_related_entity_type_idx ON "agent_db_app_public".memories USING BTREE ( related_entity_type );

