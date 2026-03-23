-- Deploy: schemas/agentic_db_app_public/tables/conversations_chunks/indexes/conversations_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/columns/created_at/column


CREATE INDEX conversations_chunks_created_at_idx ON "agentic_db_app_public".conversations_chunks ( created_at );

