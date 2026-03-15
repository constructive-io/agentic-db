-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/indexes/org_profiles_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/entity_id/column


CREATE INDEX org_profiles_entity_id_idx ON "agent_db_profiles_public".org_profiles USING BTREE ( entity_id );

