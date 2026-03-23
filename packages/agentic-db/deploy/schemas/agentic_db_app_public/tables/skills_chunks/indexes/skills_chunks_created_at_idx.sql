-- Deploy: schemas/agentic_db_app_public/tables/skills_chunks/indexes/skills_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/columns/created_at/column


CREATE INDEX skills_chunks_created_at_idx ON "agentic_db_app_public".skills_chunks ( created_at );

