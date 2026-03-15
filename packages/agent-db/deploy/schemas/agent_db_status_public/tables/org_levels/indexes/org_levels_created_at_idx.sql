-- Deploy: schemas/agent_db_status_public/tables/org_levels/indexes/org_levels_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/table
-- requires: schemas/agent_db_status_public/tables/org_levels/columns/created_at/column


CREATE INDEX org_levels_created_at_idx ON agent_db_status_public.org_levels ( created_at );

