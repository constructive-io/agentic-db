-- Deploy: schemas/agent_db_status_public/tables/app_levels/indexes/app_levels_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/table
-- requires: schemas/agent_db_status_public/tables/app_levels/columns/created_at/column


CREATE INDEX app_levels_created_at_idx ON "agent_db_status_public".app_levels ( created_at );

