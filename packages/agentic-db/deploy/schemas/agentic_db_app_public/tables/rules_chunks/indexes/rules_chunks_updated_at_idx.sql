-- Deploy: schemas/agentic_db_app_public/tables/rules_chunks/indexes/rules_chunks_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/columns/updated_at/column


CREATE INDEX rules_chunks_updated_at_idx ON "agentic_db_app_public".rules_chunks ( updated_at );

