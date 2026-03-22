-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/alterations/alt0000001977
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


COMMENT ON TABLE "agentic_db_app_public".trip_chunks IS E'@@searchConfig {}';

