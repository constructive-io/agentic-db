-- Deploy: schemas/agent_db_status_public/tables/app_levels/indexes/app_levels_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/table
-- requires: schemas/agent_db_status_public/tables/app_levels/columns/updated_at/column


CREATE INDEX app_levels_updated_at_idx ON "agent_db_status_public".app_levels ( updated_at );

