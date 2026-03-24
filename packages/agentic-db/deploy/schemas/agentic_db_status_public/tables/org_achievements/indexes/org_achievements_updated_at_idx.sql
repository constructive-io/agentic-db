-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/indexes/org_achievements_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table
-- requires: schemas/agentic_db_status_public/tables/org_achievements/columns/updated_at/column


CREATE INDEX org_achievements_updated_at_idx ON "agentic_db_status_public".org_achievements ( updated_at );

