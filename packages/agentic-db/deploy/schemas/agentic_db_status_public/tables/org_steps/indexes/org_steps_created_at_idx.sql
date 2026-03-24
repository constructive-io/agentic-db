-- Deploy: schemas/agentic_db_status_public/tables/org_steps/indexes/org_steps_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_status_public/tables/org_steps/columns/created_at/column


CREATE INDEX org_steps_created_at_idx ON "agentic_db_status_public".org_steps ( created_at );

