-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/indexes/org_level_requirements_level_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/level/column


CREATE INDEX org_level_requirements_level_idx ON "agent_db_status_public".org_level_requirements USING BTREE ( level );

