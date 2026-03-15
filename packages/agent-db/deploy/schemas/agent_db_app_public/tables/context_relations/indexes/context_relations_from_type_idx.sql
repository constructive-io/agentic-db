-- Deploy: schemas/agent_db_app_public/tables/context_relations/indexes/context_relations_from_type_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/from_type/column
-- requires: schemas/agent_db_app_public/tables/agent_spawns/indexes/agent_spawns_status_idx


CREATE INDEX context_relations_from_type_idx ON "agent_db_app_public".context_relations USING BTREE ( from_type );

