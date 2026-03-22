-- Deploy: schemas/agentic_db_app_public/tables/trip_hiking_trails/alterations/alt0000002925
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


COMMENT ON TABLE agentic_db_app_public.trip_hiking_trails IS E'@behavior +manyToMany';

