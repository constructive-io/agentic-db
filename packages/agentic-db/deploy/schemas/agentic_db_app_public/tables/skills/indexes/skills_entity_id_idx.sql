-- Deploy: schemas/agentic_db_app_public/tables/skills/indexes/skills_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/memories/columns/embedding/column


CREATE INDEX skills_entity_id_idx ON agentic_db_app_public.skills USING BTREE ( entity_id );

