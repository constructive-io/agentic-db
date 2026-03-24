-- Deploy: schemas/agentic_db_app_public/tables/skills_chunks/indexes/skills_chunks_skills_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/columns/skills_id/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE INDEX skills_chunks_skills_id_idx ON "agentic_db_app_public".skills_chunks USING BTREE ( skills_id );

