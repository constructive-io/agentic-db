-- Deploy: schemas/agentic_db_app_public/tables/places_chunks/alterations/alt0000001787
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


COMMENT ON TABLE "agentic_db_app_public".places_chunks IS E'@@chunksOf {"parent_fk": "places_id", "parent_table": "places"}';

