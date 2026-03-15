-- Deploy: schemas/agent_db_status_public/tables/org_levels/indexes/org_levels_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/table
-- requires: schemas/agent_db_status_public/tables/org_levels/columns/updated_at/column


CREATE INDEX org_levels_updated_at_idx ON "agent_db_status_public".org_levels ( updated_at );

